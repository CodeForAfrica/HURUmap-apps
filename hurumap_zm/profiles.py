from collections import OrderedDict

from hurumap.geo import geo_data
from hurumap.data.tables import get_model_from_fields
from hurumap.data.utils import get_session, calculate_median, merge_dicts, get_stat_data, get_objects_by_geo, group_remainder
from django.conf import settings


# ensure tables are loaded
import hurumap_zm.tables  # noqa

SECTIONS = settings.HURUMAP.get('topics', {})

PROFILE_SECTIONS = (
    'demographics',
    # 'education',
    # 'employment',
    # 'households',
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


def get_census_profile(geo_code, geo_level, get_params,  profile_name=None):
    session = get_session()
    try:
        geo_summary_levels = geo_data.get_summary_geo_info(geo_code, geo_level)
        data = {}
        sections = []
        selected_sections = []
        if get_params.get('topic'):
            categories = get_params.get('topic').split(',')
            for cat in categories:
                selected_sections.extend(SECTIONS[cat]['profiles'])
            data['selected_topics'] = categories

        for cat in SECTIONS:
            sections.extend(SECTIONS[cat]['profiles'])

        for section in sections:
            section = section.lower().replace(' ', '_')
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
        if 'households' in sections:
            group_remainder(data['households']['roofing_material_distribution'], 5)
            group_remainder(data['households']['wall_material_distribution'], 5)

        data['all_sections'] = SECTIONS
        if (selected_sections == []): selected_sections = sections
        data['raw_selected_sections'] = selected_sections
        data['selected_sections'] = [x.replace(' ','_').lower() for x in selected_sections]
        return data

    finally:
        session.close()



def get_demographics_profile(geo_code, geo_level, session):

    # gender
    gender_dist_data, total_pop = get_stat_data(
        'gender', geo_level, geo_code, session,
        table_fields=['gender', 'age group'])

    # age group
    age_group_dist_data, _ = get_stat_data(
        'age group', geo_level, geo_code, session,
        table_fields=['gender', 'age group'])
    total_under_15 = age_group_dist_data['0-14 Years']['numerators']['this']

    # rural or urban
    rural_dist_data, _ = get_stat_data(
        ['rural or urban','gender'], geo_level, geo_code, session,
        table_fields=['gender', 'rural or urban'])

    # # sex
    # sex_dist_data, total_pop = get_stat_data(
    #     'sex', geo_level, geo_code, session,
    #     table_fields=['age in completed years', 'sex', 'rural or urban'])

    # # urban/rural by sex
    # urban_dist_data, _ = get_stat_data(
    #     ['rural or urban', 'sex'], geo_level, geo_code, session,
    #     table_fields=['age in completed years', 'sex', 'rural or urban'])
    # total_urbanised = 0
    # for data in urban_dist_data['Urban'].itervalues():
    #     if 'numerators' in data:
    #         total_urbanised += data['numerators']['this']

    # # median age
    # db_model_age = get_model_from_fields(['age in completed years', 'sex', 'rural or urban'], geo_level)
    # objects = get_objects_by_geo(db_model_age, geo_code, geo_level, session, ['age in completed years'])
    # objects = sorted((o for o in objects if getattr(o, 'age in completed years') != 'unspecified'),
    #                  key=lambda x: int(getattr(x, 'age in completed years').replace('+', '')))
    # median = calculate_median(objects, 'age in completed years')

    # # age in 10 year groups
    # def age_recode(f, x):
    #     age = int(x.replace('+', ''))
    #     if age >= 80:
    #         return '80+'
    #     bucket = 10 * (age / 10)
    #     return '%d-%d' % (bucket, bucket + 9)

    # age_dist_data, _ = get_stat_data(
    #     'age in completed years', geo_level, geo_code, session,
    #     table_fields=['age in completed years', 'sex', 'rural or urban'],
    #     recode=age_recode, exclude=['unspecified'])

    # # age category
    # def age_cat_recode(f, x):
    #     age = int(x.replace('+', ''))
    #     if age < 18:
    #         return 'Under 18'
    #     elif age >= 65:
    #         return '65 and over'
    #     else:
    #         return '18 to 64'

    # age_cats, _ = get_stat_data(
    #     'age in completed years', geo_level, geo_code, session,
    #     table_fields=['age in completed years', 'sex', 'rural or urban'],
    #     recode=age_cat_recode,
    #     exclude=['unspecified'])

    final_data = {
        'gender_ratio': gender_dist_data,
        'age_group_distribution': age_group_dist_data,
        'under_15': {
            'name': 'Under 15 years',
            'values': {'this': total_under_15}
        },
        'rural_distribution': rural_dist_data,
        # 'sex_ratio': sex_dist_data,
        # 'urban_distribution': urban_dist_data,
        # 'urbanised': {
        #     'name': 'In urban areas',
        #     'numerators': {'this': total_urbanised},
        #     'values': {'this': round(total_urbanised / total_pop * 100, 2)}
        # },
        # 'age_group_distribution': age_dist_data,
        # 'age_category_distribution': age_cats,
        # 'median_age': {
        #     "name": "Median age",
        #     "values": {"this": median},
        # },
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
