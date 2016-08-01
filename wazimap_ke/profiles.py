from collections import OrderedDict

from wazimap.geo import geo_data
from wazimap.data.tables import get_model_from_fields
from wazimap.data.utils import get_session, calculate_median, merge_dicts, get_stat_data, get_objects_by_geo, group_remainder


# ensure tables are loaded
import wazimap_ke.tables  # noqa


PROFILE_SECTIONS = (
    'demographics',
    'education',
    'employment',
    'households',
    'contraceptive_use',
    'maternal_care_indicators',
    'knowledge_of_hiv_prevention_methods',
    'ITN',
    'fertility',
    'vaccinations',
    'type_treatment',
    'nutrition',
    'protests',
    'schoolfires'
)

EMPLOYMENT_RECODES = OrderedDict([
    ('seeking work / no work available', 'Seeking work'),
    ('employed', 'Employed'),
    ('economically inactive', 'Not economically active'),
    ('employment unclassified', 'Unspecified')])

WATER_SOURCE_RECODES = OrderedDict([
    ('piped', 'Piped'),
    ('piped into dwelling', 'Piped'),
    ('stream', 'Stream'),
    ('spring/well/borehole', 'Spring, well or borehole'),
    ('lake', 'Lake, pond or dam'),
    ('pond/dam', 'Lake, pond or dam'),
    ('jabia/rain/harvested', 'Rain/jabia'),
    ('water vendor', 'Vendor'),
    ('other', 'Other'),
])


def get_census_profile(geo_code, geo_level, profile_name=None):
    session = get_session()

    try:
        geo_summary_levels = geo_data.get_summary_geo_info(geo_code, geo_level)
        data = {}

        for section in PROFILE_SECTIONS:
            function_name = 'get_%s_profile' % section
            if function_name in globals():
                func = globals()[function_name]
                data[section] = func(geo_code, geo_level, session)

                # get profiles for province and/or country
                for level, code in geo_summary_levels:
                    # merge summary profile into current geo profile
                    merge_dicts(data[section], func(code, level, session), level)

        # tweaks to make the data nicer
        # show X largest groups on their own and group the rest as 'Other'
        group_remainder(data['households']['roofing_material_distribution'], 5)
        group_remainder(data['households']['wall_material_distribution'], 5)

        return data

    finally:
        session.close()


def get_demographics_profile(geo_code, geo_level, session):
    # sex
    sex_dist_data, total_pop = get_stat_data(
        'sex', geo_level, geo_code, session,
        table_fields=['age in completed years', 'sex', 'rural or urban'])

    # urban/rural by sex
    urban_dist_data, _ = get_stat_data(
        ['rural or urban', 'sex'], geo_level, geo_code, session,
        table_fields=['age in completed years', 'sex', 'rural or urban'])
    total_urbanised = 0
    for data in urban_dist_data['Urban'].itervalues():
        if 'numerators' in data:
            total_urbanised += data['numerators']['this']

    # median age
    db_model_age = get_model_from_fields(['age in completed years', 'sex', 'rural or urban'], geo_level)
    objects = get_objects_by_geo(db_model_age, geo_code, geo_level, session, ['age in completed years'])
    objects = sorted((o for o in objects if getattr(o, 'age in completed years') != 'unspecified'),
                     key=lambda x: int(getattr(x, 'age in completed years').replace('+', '')))
    median = calculate_median(objects, 'age in completed years')

    # age in 10 year groups
    def age_recode(f, x):
        age = int(x.replace('+', ''))
        if age >= 80:
            return '80+'
        bucket = 10 * (age / 10)
        return '%d-%d' % (bucket, bucket + 9)

    age_dist_data, _ = get_stat_data(
        'age in completed years', geo_level, geo_code, session,
        table_fields=['age in completed years', 'sex', 'rural or urban'],
        recode=age_recode, exclude=['unspecified'])

    # age category
    def age_cat_recode(f, x):
        age = int(x.replace('+', ''))
        if age < 18:
            return 'Under 18'
        elif age >= 65:
            return '65 and over'
        else:
            return '18 to 64'

    age_cats, _ = get_stat_data(
        'age in completed years', geo_level, geo_code, session,
        table_fields=['age in completed years', 'sex', 'rural or urban'],
        recode=age_cat_recode,
        exclude=['unspecified'])

    final_data = {
        'sex_ratio': sex_dist_data,
        'urban_distribution': urban_dist_data,
        'urbanised': {
            'name': 'In urban areas',
            'numerators': {'this': total_urbanised},
            'values': {'this': round(total_urbanised / total_pop * 100, 2)}
        },
        'age_group_distribution': age_dist_data,
        'age_category_distribution': age_cats,
        'median_age': {
            "name": "Median age",
            "values": {"this": median},
        },
        'total_population': {
            "name": "People",
            "values": {"this": total_pop}
        }}

    return final_data


def get_education_profile(geo_code, geo_level, session):
    # highest level reached
    edu_dist_data, total_pop = get_stat_data(
        'highest education level reached', geo_level, geo_code, session,
        key_order=['None', 'Pre-primary', 'Primary', 'Secondary', 'Tertiary',
                   'University', 'Youth polytechnic', 'Basic literacy', 'Madrassa'])

    secondary_or_higher = 0
    for key, data in edu_dist_data.iteritems():
        if key in ['Secondary', 'Tertiary', 'University', 'Youth polytechnic']:
            secondary_or_higher += data['numerators']['this']

    # school attendance by sex
    school_attendance_dist, _ = get_stat_data(
        ['school attendance', 'sex'], geo_level, geo_code, session,
        key_order={'school attendance': ['Never attended', 'At school', 'Left school', 'Unspecified'],
                   'sex': ['Female', 'Male']})

    total_never = 0.0
    for data in school_attendance_dist['Never attended'].itervalues():
        if 'numerators' in data:
            total_never += data['numerators']['this']

    return {
        'education_reached_distribution': edu_dist_data,
        'education_reached_secondary_or_higher': {
            'name': 'Reached Secondary school or higher',
            'numerators': {'this': secondary_or_higher},
            'values': {'this': round(secondary_or_higher / total_pop * 100, 2)}
        },
        'school_attendance_distribution': school_attendance_dist,
        'school_attendance_never': {
            'name': 'Never attended school',
            'numerators': {'this': total_never},
            'values': {'this': round(total_never / total_pop * 100, 2)}
        },
    }


def get_employment_profile(geo_code, geo_level, session):
    # employment status
    employment_activity_dist, total_workers = get_stat_data(
        ['employment activity status', 'sex'], geo_level, geo_code, session,
        recode={'employment activity status': dict(EMPLOYMENT_RECODES)},
        key_order={'employment activity status': EMPLOYMENT_RECODES.values(),
                   'sex': ['Female', 'Male']})

    total_employed = 0.0
    for data in employment_activity_dist['Employed'].itervalues():
        if 'numerators' in data:
            total_employed += data['numerators']['this']

    return {
        'activity_status_distribution': employment_activity_dist,
        'employed': {
            'name': 'Employment',
            'numerators': {'this': total_employed},
            'values': {'this': round(total_employed / total_workers * 100, 2)},
        },
    }


def get_households_profile(geo_code, geo_level, session):
    # main source of water
    water_source_dist, total_households = get_stat_data(
        'main source of water', geo_level, geo_code, session,
        recode=dict(WATER_SOURCE_RECODES),
        key_order=WATER_SOURCE_RECODES.values())
    total_piped = water_source_dist['Piped']['numerators']['this']

    # main mode of waste disposal
    waste_disposal_dist, _ = get_stat_data(
        'main mode of human waste disposal', geo_level, geo_code, session,
        key_order=['Main sewer', 'Septic tank', 'Cess pool', 'Bucket', 'Bush', 'Other'])

    total_sewer_or_septic = 0.0
    for key in ['Main sewer', 'Septic tank']:
        if key in waste_disposal_dist:
            total_sewer_or_septic += waste_disposal_dist[key]['numerators']['this']

    # lighting
    lighting_dist, _ = get_stat_data(
        'main type of lighting fuel', geo_level, geo_code, session,
        key_order=['Electricity', 'Solar', 'Gas lamps', 'Pressure lamps', 'Tin lamps', 'Lanterns', 'Wood', 'Other'])
    total_electricity = lighting_dist['Electricity']['numerators']['this']

    # construction materials
    roofing_dist, _ = get_stat_data(
        'main type of roofing material', geo_level, geo_code, session,
        order_by='-total')

    wall_dist, _ = get_stat_data(
        'main type of wall material', geo_level, geo_code, session,
        order_by='-total')

    floor_dist, _ = get_stat_data(
        'main type of floor material', geo_level, geo_code, session,
        order_by='-total')

    return {
        'total_households': {
            'name': 'Households',
            'values': {'this': total_households},
        },
        'water_source_distribution': water_source_dist,
        'piped_water': {
            'name': 'Have piped water',
            'numerators': {'this': total_piped},
            'values': {'this': round(total_piped / total_households * 100, 2)},
        },
        'waste_disposal_distribution': waste_disposal_dist,
        'sewer_or_septic': {
            'name': 'Have a sewer or septic tank',
            'numerators': {'this': total_sewer_or_septic},
            'values': {'this': round(total_sewer_or_septic / total_households * 100, 2)},
        },
        'lighting_distribution': lighting_dist,
        'lighting_electricity': {
            'name': 'Use electricity for lighting',
            'numerators': {'this': total_electricity},
            'values': {'this': round(total_electricity / total_households * 100, 2)},
        },
        'roofing_material_distribution': roofing_dist,
        'floor_material_distribution': floor_dist,
        'wall_material_distribution': wall_dist,
    }

def get_contraceptive_use_profile(geo_code, geo_level, session):
    # contraceptive_use stats
    contraceptive_use_dist_data, _ = get_stat_data(
        'contraceptive_use', geo_level, geo_code, session,
        key_order=['Modern', 'Traditional', 'Not using'])

    modern = contraceptive_use_dist_data['Modern']['numerators']['this']
    traditional = contraceptive_use_dist_data['Traditional']['numerators']['this']
    cpr = modern + traditional

    contraceptive_modern_method_dist_data, _ = get_stat_data(
        'contraceptive_modern_method', geo_level, geo_code, session)
    contraceptive_traditional_method_dist_data, _ = get_stat_data(
        'contraceptive_traditional_method', geo_level, geo_code, session)

    return  {
        'contraceptive_use_distribution': contraceptive_use_dist_data,
        'modern_methods_distribution': contraceptive_modern_method_dist_data,
        'traditional_methods_distribution': contraceptive_traditional_method_dist_data,
        'cpr': {
            'name': 'Contraceptive prevalence rate',
            'numerators': {'this': cpr},
            'values': {'this': cpr},
        }
    }

def get_maternal_care_indicators_profile(geo_code, geo_level, session):
    # maternal care indicators stats
    maternal_care_indicators_data, _ = get_stat_data(
        'maternal care indicators', geo_level, geo_code, session)

    delivery_in_health_facility = \
        maternal_care_indicators_data['Percentage delivered in a health facility']['numerators']['this']

    antenatal_care_by_skilled_provider = \
        maternal_care_indicators_data['Percentage with antenatal care from a skilled provider']['numerators']['this']
    antenatal_dist = get_dictionary('From a skilled provider', 'From a non-skilled provider', antenatal_care_by_skilled_provider )

    anc_visits = maternal_care_indicators_data['Percentage with 4+ ANC visits']['numerators']['this']
    anc_visits_dist = get_dictionary('4+', 'Less than 4', anc_visits )

    delivery_by_skilled_provider = \
        maternal_care_indicators_data['Percentage delivered by a skilled provider']['numerators']['this']
    delivery_by_skilled_provider_dist = get_dictionary('Skilled provider', 'Non-skilled provider', delivery_by_skilled_provider)

    #Use of IPT
    use_of_ipt_dist, _ = get_stat_data('use of ipt', geo_level, geo_code, session)

    one_or_more_dist = use_of_ipt_dist['1 or more']['numerators']['this']
    one_or_more_dist = get_dictionary('1 or more', 'Less', one_or_more_dist)
    two_or_more_dist = use_of_ipt_dist['2 or more']['numerators']['this']
    two_or_more_dist = get_dictionary('2 or more', 'Less', two_or_more_dist)
    three_or_more_dist = use_of_ipt_dist['3 or more']['numerators']['this']
    three_or_more_dist = get_dictionary('3 or more', 'Less', three_or_more_dist)

    return  {
        'maternal_care_indicators': maternal_care_indicators_data,
        'antenatal_dist': antenatal_dist,
        'anc_visits_dist': anc_visits_dist,
        'delivery_by_skilled_provider_dist': delivery_by_skilled_provider_dist,
        'delivery_in_health_facility': {
            'name': 'babies delivered in a health facility',
            'numerators': {'this': delivery_in_health_facility},
            'values': {'this': round(delivery_in_health_facility, 2)}
        },
        'one_or_more_dist': one_or_more_dist,
        'two_or_more_dist': two_or_more_dist,
        'three_or_more_dist': three_or_more_dist,
    }

def get_knowledge_of_hiv_prevention_methods_profile(geo_code, geo_level, session):
    dist, _ = get_stat_data(
        ['knowledge of hiv prevention methods', 'sex'], geo_level, geo_code, session,
        key_order={'knowledge of hiv prevention methods': {'Using condoms', 'Being faithful', 'Both'},
                   'sex': ['Female', 'Male']})

    # need to use numerators instead of values
    for key in dist:
        if key == 'metadata': continue
        dist[key]['Female']['values']['this'] = 100 - dist[key]['Female']['numerators']['this']
        dist[key]['Male']['values']['this'] = 100 - dist[key]['Male']['numerators']['this']
    return {
        'distribution': dist
    }

def get_ITN_profile(geo_code, geo_level, session):
    # household possession and use of ITN
    possession_dist, _ = get_stat_data(['household possession of itn'], geo_level, geo_code, session)

    households_with_at_least_one_itn = \
        possession_dist['Households with at least one ITN']['numerators']['this']
    households_with_at_least_one_itn = get_dictionary('Possess at least one ITN', 'No ITN', households_with_at_least_one_itn)

    percentage_households_with_ITN_for_every_two_people = \
        possession_dist['Percentage households with ITN for every 2 people in household']['numerators']['this']
    percentage_households_with_ITN_for_every_two_people = get_dictionary('1:2',\
                                                                         'less than 1:2',\
                                                                         percentage_households_with_ITN_for_every_two_people)

    average_itn_per_household = possession_dist['Average ITN per household']['numerators']['this']

    use_dist, _ = get_stat_data(['household', 'users', 'itn_use'], geo_level, geo_code, session)
    households_with_at_least_one_itn_use_dist = use_dist['With at least one ITN']
    all_households_use_dist = use_dist['All']

    return {
        'households_with_at_least_one_itn': households_with_at_least_one_itn,
        'percentage_households_with_ITN_for_every_two_people': percentage_households_with_ITN_for_every_two_people,
        'average_itn_per_household': {
            'name': 'Average number of insecticide-treated nets (ITNs) per household',
            'numerators': {'this': average_itn_per_household},
            'values': {'this': average_itn_per_household}
        },
        'households_with_at_least_one_itn_use_dist': households_with_at_least_one_itn_use_dist,
        'all_households_use_dist': all_households_use_dist
    }

def get_fertility_profile(geo_code, geo_level, session):
    # fertility
    dist, _ = get_stat_data(['fertility'], geo_level, geo_code, session)

    percentage_women_age_15_49_currently_pregnant = dist['Pregnant']['numerators']['this']

    percentage_women_age_15_49_currently_pregnant = get_dictionary('Pregnant', 'Not pregnant',\
                                                                   percentage_women_age_15_49_currently_pregnant)

    fertility_rate = dist['Rate']['numerators']['this']
    mean_number_of_children_ever_born_to_women_aged_40_49 =  dist['Mean']['numerators']['this']

    return {
        'percentage_women_age_15_49_currently_pregnant': percentage_women_age_15_49_currently_pregnant,
        'fertility_rate': {
            'name': 'Fertility',
            'numerators': {'this': fertility_rate},
            'values': {'this': fertility_rate}
        },
        'mean_number_of_children_ever_born_to_women_aged_40_49': {
            'name': 'Mean number of children ever born to women aged 40-49',
            'numerators': {'this': mean_number_of_children_ever_born_to_women_aged_40_49},
            'values': {'this': mean_number_of_children_ever_born_to_women_aged_40_49}
        },
    }

def get_vaccinations_profile(geo_code, geo_level, session):
    # vaccinations
    dist, _ = get_stat_data(['vaccinations'], geo_level, geo_code, session,
                            key_order=['BCG','Pentavalent 1','Pentavalent 2','Pentavalent 3','Polio 0','Polio 1', \
                                       'Polio 2','Polio 3','Measles','Pneumococcal 1', \
                                       'Pneumococcal 2','Pneumococcal 3',],
                            only=['BCG','Pentavalent 1','Pentavalent 2','Pentavalent 3','Polio 0','Polio 1', \
                                  'Polio 2','Polio 3','Measles','Pneumococcal 1', \
                                  'Pneumococcal 2','Pneumococcal 3',],
                            )

    # need to use numerators instead of values
    for key in dist:
        if key == 'metadata':
            continue
        dist[key]['values']['this'] = dist[key]['numerators']['this']

    vacc_dist, _ = get_stat_data(['vaccinations'], geo_level, geo_code, session,
                                 # only=['All basic vaccinations', 'Percentage with vaccination card',\
                                 # 'Fully vaccinated', 'Not vaccinated'],
                                 )

    fully_vaccinated = vacc_dist['Fully vaccinated']['numerators']['this']
    fully_vaccinated = get_dictionary('Fully vaccinated', 'Not fully vaccinated', fully_vaccinated)

    all_basic_vaccinations = vacc_dist['All basic vaccinations']['numerators']['this']
    all_basic_vaccinations = get_dictionary('All basic vaccinations', 'Basic vaccinations not administered', \
                                            all_basic_vaccinations)

    percentage_with_vaccination_cards = vacc_dist['Percentage with vaccination card']['numerators']['this']
    percentage_with_vaccination_cards = get_dictionary('Have vaccination cards', 'No vaccination cards',\
                                                       percentage_with_vaccination_cards)
    not_vaccinated = vacc_dist['Not vaccinated']['numerators']['this']

    return {
        'distribution': dist,
        'fully_vaccinated': fully_vaccinated,
        'all_basic_vaccinations': all_basic_vaccinations,
        'percentage_with_vaccination_cards': percentage_with_vaccination_cards,
        'not_vaccinated': {
            'name': 'Not vaccinated',
            'numerators': {'this': not_vaccinated},
            'values': {'this': not_vaccinated},
        }
    }

def get_type_treatment_profile(geo_code, geo_level, session):
    # Treatment for acute respiratory infection symptoms, fever, and diarrhoea stats
    dist, _ = get_stat_data(['type', 'treatment'], geo_level, geo_code, session,
                            key_order={
                                'type': ['ARI', 'Fever','Diarrhoea'],
                                'treatment': ['Sought treatment from health facility or provider', \
                                              'ORT', 'Zinc', 'ORS and zinc','Fluid from ORS packet'
                                              ]
                            })
    # need to use numerators instead of values
    for key in dist:
        if key == 'metadata': continue
        for other_key in dist[key]:
            if other_key == 'metadata': continue
            try:
                dist[key][other_key]['values']['this'] = dist[key][other_key]['numerators']['this']
            except:
                dist[key][other_key] = {'values': {'this': 0}, 'numerators': {'this': 0}}

    ari = dist['ARI']['Sought treatment from health facility or provider']['numerators']['this']
    fever = dist['Fever']['Sought treatment from health facility or provider']['numerators']['this']
    dist.pop('ARI')
    dist.pop('Fever')
    ari_dist = get_dictionary('Sought', 'Did not seek', ari)
    fever_dist = get_dictionary('Sought', 'Did not seek', fever)


    treatment_of_chidren_with_fever_dist, _ = get_stat_data(['treatment of children with fever'], geo_level, geo_code, session)
    children_with_fever = treatment_of_chidren_with_fever_dist['Had fever']['numerators']['this']
    treatment_of_chidren_with_fever_dist.pop('Had fever')

    # need to use numerators instead of values
    for v in treatment_of_chidren_with_fever_dist:
        if v == 'metadata': continue
        treatment_of_chidren_with_fever_dist[v]['values']['this'] = treatment_of_chidren_with_fever_dist[v]['numerators']['this']


    return {
        'treatment_distribution': dist,
        'ari_dist': ari_dist,
        'fever_dist': fever_dist,
        'treatment_of_chidren_with_fever_dist': treatment_of_chidren_with_fever_dist,
        'children_with_fever': {
            'name': 'Percentage of children with fever in the two weeks preceding the survey',
            'numerators': {'this': children_with_fever},
            'values': {'this': children_with_fever}
        },
    }

def get_nutrition_profile(geo_code, geo_level, session):
    # nutritional stats among children
    height_for_age_dist, _ = get_stat_data(['height for age'], geo_level, geo_code, session)
    for key in height_for_age_dist:
        if key == 'metadata': continue
        height_for_age_dist[key]['values']['this'] = height_for_age_dist[key]['numerators']['this']
    height_for_age_below_minus_three = height_for_age_dist['Below -3']['numerators']['this']
    height_for_age_below_minus_three_dist = get_dictionary('Below -3 SD', 'Above -3 SD', height_for_age_below_minus_three)
    height_for_age_below_minus_two = height_for_age_dist['Below -2']['numerators']['this']
    height_for_age_below_minus_two_dist = get_dictionary('Below -2 SD', 'Above -2 SD', height_for_age_below_minus_two)
    height_for_age_mean_z_score = height_for_age_dist['Mean Z-score']['numerators']['this']

    weight_for_height_dist, _ = get_stat_data(['weight for height'], geo_level, geo_code, session)
    for key in weight_for_height_dist:
        if key == 'metadata': continue
        weight_for_height_dist[key]['values']['this'] = weight_for_height_dist[key]['numerators']['this']
    weight_for_height_below_minus_three = weight_for_height_dist['Below -3']['numerators']['this']
    weight_for_height_below_minus_three_dist = get_dictionary('Below -3 SD', 'Above -3 SD', weight_for_height_below_minus_three)
    weight_for_height_below_minus_two = weight_for_height_dist['Below -2']['numerators']['this']
    weight_for_height_below_minus_two_dist = get_dictionary('Below -2 SD', 'Above -2 SD', weight_for_height_below_minus_two)
    weight_for_height_above_plus_two = weight_for_height_dist['Above +2']['numerators']['this']
    weight_for_height_above_plus_two_dist = get_dictionary('Above +2 SD', 'Below +2 SD', weight_for_height_above_plus_two)
    weight_for_height_mean_z_score = weight_for_height_dist['Mean Z-score']['numerators']['this']

    weight_for_age_dist, _ = get_stat_data(['weight for height'], geo_level, geo_code, session)
    for key in weight_for_age_dist:
        if key == 'metadata': continue
        weight_for_age_dist[key]['values']['this'] = weight_for_age_dist[key]['numerators']['this']
    weight_for_age_below_minus_three = weight_for_age_dist['Below -3']['numerators']['this']
    weight_for_age_below_minus_three_dist = get_dictionary('Below -3 SD', 'Above -3 SD',
                                                           weight_for_age_below_minus_three)
    weight_for_age_below_minus_two = weight_for_age_dist['Below -2']['numerators']['this']
    weight_for_age_below_minus_two_dist = get_dictionary('Below -2 SD', 'Above -2 SD',
                                                         weight_for_age_below_minus_two)
    weight_for_age_above_plus_two = weight_for_age_dist['Above +2']['numerators']['this']
    weight_for_age_above_plus_two_dist = get_dictionary('Above +2 SD', 'Below +2 SD',
                                                        weight_for_age_above_plus_two)
    weight_for_age_mean_z_score = weight_for_age_dist['Mean Z-score']['numerators']['this']

    return {
        'height_for_age_below_minus_three_dist': height_for_age_below_minus_three_dist,
        'height_for_age_below_minus_two_dist': height_for_age_below_minus_two_dist,
        'height_for_age_mean_z_score': {
            'name': 'Mean Z score(height-for-age)',
            'numerators': {'this': height_for_age_mean_z_score},
            'values': {'this': height_for_age_mean_z_score},
        },
        'weight_for_height_below_minus_three_dist': weight_for_height_below_minus_three_dist,
        'weight_for_height_below_minus_two_dist': weight_for_height_below_minus_two_dist,
        'weight_for_height_above_plus_two_dist': weight_for_height_above_plus_two_dist,
        'weight_for_height_mean_z_score': {
            'name': 'Mean Z score (weight-for-height)',
            'numerators': {'this': weight_for_height_mean_z_score},
            'values': {'this': weight_for_height_mean_z_score},
        },
        'weight_for_age_below_minus_three_dist': weight_for_age_below_minus_three_dist,
        'weight_for_age_below_minus_two_dist': weight_for_age_below_minus_two_dist,
        'weight_for_age_above_plus_two_dist': weight_for_age_above_plus_two_dist,
        'weight_for_age_mean_z_score': {
            'name': 'Mean Z score (weight-for-age)',
            'numerators': {'this': weight_for_age_mean_z_score},
            'values': {'this': weight_for_age_mean_z_score},
        }
    }

def get_protests_profile(geo_code, geo_level, session):
    number_of_protests_dist, _ = get_stat_data("protests", geo_level, geo_code, session)
    number_of_protests = number_of_protests_dist['Number of protests']['numerators']['this']
    return {
        'number_of_protests': {
            'name': 'Number of protests',
            'numerators': {'this': number_of_protests},
            'values': {'this': number_of_protests},
        }
    }

def get_schoolfires_profile(geo_code, geo_level, session):
    school_fires_dist, number_of_school_fires = get_stat_data("schoolfires", geo_level, geo_code, session)
    schools = school_fires_dist[school_fires_dist.keys()[0]]['name'].replace(',', '<br>').replace('"','')
    return {
        'schoolfires': {
            'name': 'Number of school fires',
            'numerators': {'this': number_of_school_fires},
            'values': {'this': number_of_school_fires},
        },
        'schools': schools
    }

def get_dictionary(key_one, key_two, val):
    #return a dictionary with the second dictionary being 100 - val
    return {
        key_one: {
            'name': key_one,
            'numerators': {'this': val},
            'values': {'this': round(val, 2)},
        },
        key_two: {
            'name': key_two,
            'numerators': {'this': 100 - val},
            'values': {'this': 100 - round(val, 2)},
        }
    }