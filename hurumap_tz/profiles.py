from collections import OrderedDict

from hurumap.geo import geo_data
from hurumap.data.tables import get_model_from_fields
from hurumap.data.utils import get_session, calculate_median, merge_dicts, get_stat_data, get_objects_by_geo, \
    group_remainder
from django.conf import settings

# ensure tables are loaded
import hurumap_tz.tables  # noqa

SECTIONS = settings.HURUMAP.get('topics', {})

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


def get_census_profile(geo_code, geo_level, get_params, profile_name=None):
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
        data['selected_sections'] = [x.replace(' ', '_').lower() for x in selected_sections]
        return data

    finally:
        session.close()


def get_demographics_profile(geo_code, geo_level, session):
    sex_dist_data = None
    age_dist_data = None
    age_cats = None
    median = None
    if geo_level != "ward":
        # sex
        sex_dist_data, total_pop = get_stat_data(
            'sex', geo_level, geo_code, session,
            table_fields=['age in completed years', 'sex', 'rural or urban'])
    else:
        # sex
        sex_dist_data, total_pop = get_stat_data(
            'sex', geo_level, geo_code, session,
            table_fields=['sex', 'rural or urban'])

    if geo_level != "ward":
        # urban/rural by sex
        urban_dist_data, _ = get_stat_data(
            ['rural or urban', 'sex'], geo_level, geo_code, session,
            table_fields=['age in completed years', 'sex', 'rural or urban'])
        total_urbanised = 0
        for data in urban_dist_data['Urban'].itervalues():
            if 'numerators' in data:
                total_urbanised += data['numerators']['this']
    else:
        # urban/rural by sex
        urban_dist_data, _ = get_stat_data(
            ['rural or urban', 'sex'], geo_level, geo_code, session,
            table_fields=['sex', 'rural or urban'])
        total_urbanised = 0
        for data in urban_dist_data['Urban'].itervalues():
            if 'numerators' in data:
                total_urbanised += data['numerators']['this']

    if geo_level != "ward":
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
    if geo_level == "ward": return {}
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
    if geo_level == "ward": return {}
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
    if geo_level == "ward": return {}
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
    lighting_dist, _ = get_stat_data('main type of lighting fuel', geo_level, geo_code, session,
                                     key_order=['Electricity', 'Solar', 'Gas lamps', 'Pressure lamps', 'Tin lamps',
                                                'Lanterns', 'Wood', 'Other'])
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


def get_literacy_and_numeracy_tests_profile(geo_code, geo_level, session):
    if geo_level == "ward": return {}
    # literacy tests stats
    literacy_data, _ = get_stat_data(
        'literacy test', geo_level, geo_code, session)

    all_subjects = literacy_data['All subjects']['numerators']['this']

    english_test_dist = literacy_data['English']['numerators']['this']
    english_test_dist = {
        'Passed': {
            'name': 'Competent in English',
            'numerators': {'this': english_test_dist},
            'values': {'this': round(english_test_dist, 2)},
        },
        'Failed': {
            'name': 'Not competent',
            'numerators': {'this': 100 - english_test_dist},
            'values': {'this': 100 - round(english_test_dist, 2)},
        },
        'metadata': literacy_data['metadata']
    }

    swahili_test_dist = literacy_data['Swahili']['numerators']['this']
    swahili_test_dist = {
        'Passed': {
            'name': 'Competent in Swahili',
            'numerators': {'this': swahili_test_dist},
            'values': {'this': round(swahili_test_dist, 2)},
        },
        'Failed': {
            'name': 'Not competent',
            'numerators': {'this': 100 - swahili_test_dist},
            'values': {'this': 100 - round(swahili_test_dist, 2)},
        },
        'metadata': literacy_data['metadata']
    }

    numeracy_test_dist = literacy_data['Math']['numerators']['this']
    numeracy_test_dist = {
        'Passed': {
            'name': 'Competent in Math',
            'numerators': {'this': numeracy_test_dist},
            'values': {'this': round(numeracy_test_dist, 2)},
        },
        'Failed': {
            'name': 'Not competent',
            'numerators': {'this': 100 - numeracy_test_dist},
            'values': {'this': 100 - round(numeracy_test_dist, 2)},
        },
        'metadata': literacy_data['metadata']
    }

    return {
        'literacy_data': literacy_data,
        'metadata': literacy_data['metadata'],
        'english_test_dist': english_test_dist,
        'swahili_test_dist': swahili_test_dist,
        'numeracy_test_dist': numeracy_test_dist,
        'numeracy_sort': '-value' if numeracy_test_dist <= 50 else 'value',
        'english_sort': '-value' if english_test_dist <= 50 else 'value',
        'swahili_sort': '-value' if swahili_test_dist <= 49 else 'value',
        'all_subjects_dist': {
            'name': 'Competent in all subjects',
            'numerators': {'this': all_subjects},
            'values': {'this': round(all_subjects, 2)}
        }
    }


def get_school_attendance_profile(geo_code, geo_level, session):
    if geo_level == "ward": return {}
    # attendance stats
    attendance_data, _ = get_stat_data(
        'school attendance', geo_level, geo_code, session)

    dropped_out_dist = \
        attendance_data['Pupils in school']['numerators']['this']
    dropped_out_dist = {
        'Pupils in school': {
            'name': 'Pupils in school',
            'numerators': {'this': dropped_out_dist},
            'values': {'this': round(dropped_out_dist, 2)},
        },
        'Dropped out': {
            'name': 'Dropped out',
            'numerators': {'this': 100 - dropped_out_dist},
            'values': {'this': 100 - round(dropped_out_dist, 2)},
        },
        'metadata': attendance_data['metadata']
    }

    out_of_school_dist = attendance_data['Drop outs']['numerators']['this']
    out_of_school_dist = {
        'Out of school': {
            'name': 'Dropped out',
            'numerators': {'this': out_of_school_dist},
            'values': {'this': round(out_of_school_dist, 2)},
        },
        'In school': {
            'name': 'In school',
            'numerators': {'this': 100 - out_of_school_dist},
            'values': {'this': 100 - round(out_of_school_dist, 2)},
        },
        'metadata': attendance_data['metadata']
    }
    return {
        'attendance_data': attendance_data,
        'dropped_out_dist': dropped_out_dist,
        'out_of_school_dist': out_of_school_dist,
        'drop_out_sort': '-value' if dropped_out_dist <= 50 else 'value',
        'out_of_school_sort': '-value' if out_of_school_dist <= 50 else 'value'
    }


def get_pupil_teacher_ratios_profile(geo_code, geo_level, session):
    if geo_level == "ward": return {}
    # pupil teacher ratios
    ratio_data, _ = get_stat_data(
        'pupil teacher ratios', geo_level, geo_code, session)

    pupil_teacher_ratio = ratio_data['Pupil teacher ratio']['numerators']['this']
    pupils_per_textbook = ratio_data['Pupils per textbook']['numerators']['this']

    pupil_attendance_rate_dist = \
        ratio_data['Government school attendance rate']['numerators']['this']
    pupil_attendance_rate_dist = get_dictionary("Attending school", "Absent", pupil_attendance_rate_dist, ratio_data)

    teachers_absent_dist = ratio_data['Teachers absent']['numerators']['this']
    teachers_absent_dist = get_dictionary("Teachers absent", "Teachers present", teachers_absent_dist, ratio_data)

    return {
        'pupil_attendance_rate_dist': pupil_attendance_rate_dist,
        'teachers_absent_dist': teachers_absent_dist,
        'pupil_teacher_ratio': {
            'name': 'For every one teacher there are ' + str(pupil_teacher_ratio) + " pupils",
            'numerators': {'this': pupil_teacher_ratio},
            'values': {'this': pupil_teacher_ratio}
        },
        'pupils_per_textbook': {
            'name': 'Pupils per textbook',
            'numerators': {'this': pupils_per_textbook},
            'values': {'this': pupils_per_textbook}
        }
    }


def get_school_amenities_profile(geo_code, geo_level, session):
    if geo_level == "ward": return {}
    # school amenities
    data, _ = get_stat_data('school amenity', geo_level, geo_code, session)

    library_data = data['Library']['numerators']['this']
    library_data = get_dictionary("Have a library", "Don't", library_data, data)

    drinking_water_data = data['Drinking water']['numerators']['this']
    drinking_water_data = get_dictionary("Have clean drinking water", "Don't", drinking_water_data, data)

    feeding_program_data = data['Feeding program']['numerators']['this']
    feeding_program_data = get_dictionary("Have a feeding program", "Don't", feeding_program_data, data)

    return {
        'library_data': library_data,
        'drinking_water_data': drinking_water_data,
        'feeding_program_data': feeding_program_data,

    }


# PEPFAR DATA
def get_pepfar_profile(geo_code, geo_level, session):
    if geo_level == "ward": return {}
    # PEPFAR stats
    pepfar_data, _ = get_stat_data("pepfar", geo_level, geo_code, session)
    HTC_TST = pepfar_data['HTC_TST']['numerators']['this']
    HTC_TST_POS = pepfar_data['HTC_TST_POS']['numerators']['this']
    PMTCT_STAT = pepfar_data['PMTCT_STAT']['numerators']['this']
    PMTCT_STAT_POS = pepfar_data['PMTCT_STAT_POS']['numerators']['this']
    PMTCT_ARV = pepfar_data['PMTCT_ARV']['numerators']['this']
    PMTCT_EID = pepfar_data['PMTCT_EID']['numerators']['this']
    PMTCT_EID_POS = pepfar_data['PMTCT_EID_POS']['numerators']['this']
    PMTCT_CTX = pepfar_data['PMTCT_CTX']['numerators']['this']
    CARE_NEW = pepfar_data['CARE_NEW']['numerators']['this']
    TX_NEW = pepfar_data['TX_NEW']['numerators']['this']
    CARE_CURR = pepfar_data['CARE_CURR']['numerators']['this']
    TB_SCREEN = pepfar_data['TB_SCREEN']['numerators']['this']
    TX_CURR = pepfar_data['TX_CURR']['numerators']['this']
    TB_ART = pepfar_data['TB_ART']['numerators']['this']
    TX_RET_NUM = pepfar_data['TX_RET_NUM']['numerators']['this']
    TX_RET_DEN = pepfar_data['TX_RET_DEN']['numerators']['this']
    VMMC_CIRC = pepfar_data['VMMC_CIRC']['numerators']['this']
    OVC_SERV = pepfar_data['OVC_SERV']['numerators']['this']
    PP_PREV = pepfar_data['PP_PREV']['numerators']['this']
    KP_PREV = pepfar_data['KP_PREV']['numerators']['this']
    try:
        HTP = round((HTC_TST_POS / HTC_TST) * 100)
        HTPP = round((((HTC_TST - HTC_TST_POS) * 1.0) / HTC_TST) * 100)
    except:
        HTP = 0
        HTPP = 0
    try:
        PSP = round(((PMTCT_STAT_POS * 1.0) / PMTCT_STAT) * 100)
        PSPP = round((((PMTCT_STAT - PMTCT_STAT_POS) * 1.0) / PMTCT_STAT) * 100)
    except:
        PSP = 0
        PSPP = 0
    try:
        PA = round((PMTCT_ARV / PMTCT_STAT_POS) * 100)
        PAP = round((((PMTCT_STAT_POS - PMTCT_ARV) * 1.0) / PMTCT_STAT_POS) * 100)
    except:
        PA = 0
        PAP = 0
    try:
        PEP = round((PMTCT_EID_POS / PMTCT_EID) * 100)
        PEPP = round((((PMTCT_EID - PMTCT_EID_POS) * 1.0) / PMTCT_EID) * 100)
    except:
        PEP = 0
        PEPP = 0
    return {
        'HTC_TST': {
            'name': 'Number of individuals who received HIV Testing and Counseling (HTC) services for HIV and their\
                        test results',
            'numerators': {'this': HTC_TST},
            'values': {'this': HTC_TST}
        },
        'HTC_TST_POS': {
            'positive': {
                'name': 'HIV+',
                'numerators': {'this': HTC_TST_POS},
                'values': {'this': HTP}
            },
            'negative': {
                'name': 'HIV-',
                'numerators': {'this': HTC_TST - HTC_TST_POS},
                'values': {'this': HTPP}
            },
            'metadata': pepfar_data['metadata']
        },
        'PMTCT_STAT': {
            'name': 'Number of pregnant women with known HIV status (includes women who were tested for HIV and received their results)',
            'numerators': {'this': PMTCT_STAT},
            'values': {'this': PMTCT_STAT},
        },
        'PMTCT_EID': {
            'name': 'Number of infants born to HIV-positive women who had a virologic HIV test done within two months of birth',
            'numerators': {'this': PMTCT_EID},
            'values': {'this': PMTCT_EID},
        },
        'PMTCT_CTX': {
            'name': 'Number of infants born to HIV-positive pregnant women who began Cotrimoxazole (CTX) prophylaxis within two months of birth',
            'numerators': {'this': PMTCT_CTX},
            'values': {'this': PMTCT_CTX},
        },
        'CARE_NEW': {
            'name': 'Number of HIV-positive adults and children newly enrolled in clinical care during the reporting period who received at least one of the following at enrollment: clinical assessment (WHO staging) OR CD4 count',
            'numerators': {'this': CARE_NEW},
            'values': {'this': CARE_NEW},
        }, 'TX_NEW': {
            'name': 'Number of adults and children newly enrolled on antiretroviral therapy (ART)',
            'numerators': {'this': TX_NEW},
            'values': {'this': TX_NEW},
        },
        'CARE_CURR': {
            'name': 'Number of HIV-positive adults and children who received at least one of the following during the reporting period: clinical assessment (WHO staging) OR CD4 count OR viral load',
            'numerators': {'this': CARE_CURR},
            'values': {'this': CARE_CURR},
        },
        'PMTCT_STAT_POS': {
            'positive': {
                'name': 'HIV+',
                'numerators': {'this': PMTCT_STAT_POS},
                'values': {'this': PSP}
            },
            'negative': {
                'name': 'HIV-',
                'numerators': {'this': PMTCT_STAT - PMTCT_STAT_POS},
                'values': {'this': PSPP}
            },
            'metadata': pepfar_data['metadata']
        },
        'PMTCT_ARV': {
            'positive': {
                'name': 'Receiving ARV',
                'numerators': {'this': PMTCT_ARV},
                'values': {'this': PA}
            },
            'negative': {
                'name': 'Not receiving ARV',
                'numerators': {'this': PMTCT_STAT_POS - PMTCT_ARV},
                'values': {'this': PAP}
            },
            'metadata': pepfar_data['metadata']
        },
        'PMTCT_EID_POS': {
            'positive': {
                'name': 'HIV+',
                'numerators': {'this': PMTCT_EID_POS},
                'values': {'this': PEP}
            },
            'negative': {
                'name': 'HIV-',
                'numerators': {'this': PMTCT_EID - PMTCT_EID_POS},
                'values': {'this': PEPP}
            },
            'metadata': pepfar_data['metadata']
        },
        'metadata': pepfar_data['metadata']

    }


def get_causes_of_death_profile(geo_code, geo_level, session):
    if geo_level != 'region' and geo_level != 'country': return {}

    causes_of_death_under_five_data, _ = get_stat_data(
        'causes of death under five', geo_level, geo_code, session, order_by='-total')
    causes_of_death_over_five_data, _ = get_stat_data(
        'causes of death over five', geo_level, geo_code, session, order_by='-total')
    inpatient_diagnosis_over_five_data, _ = get_stat_data(
        'inpatient diagnosis over five', geo_level, geo_code, session, order_by='-total')
    outpatient_diagnosis_over_five_data, _ = get_stat_data(
        'outpatient diagnosis over five', geo_level, geo_code, session, order_by='-total')
    inpatient_diagnosis_under_five_data, _ = get_stat_data(
        'inpatient diagnosis under five', geo_level, geo_code, session, order_by='-total')
    outpatient_diagnosis_under_five_data, _ = get_stat_data(
        'outpatient diagnosis under five', geo_level, geo_code, session, order_by='-total')
    return {
        'causes_of_death_under_five_data': causes_of_death_under_five_data,
        'causes_of_death_over_five_data': causes_of_death_over_five_data,
        'inpatient_diagnosis_under_five_data': inpatient_diagnosis_under_five_data,
        'inpatient_diagnosis_over_five_data': inpatient_diagnosis_over_five_data,
        'outpatient_diagnosis_over_five_data': outpatient_diagnosis_over_five_data,
        'outpatient_diagnosis_under_five_data': outpatient_diagnosis_under_five_data,
        'source_link': 'http://www.opendata.go.tz/dataset/number-and-causes-of-death-occured-by-region',
        'source_link_2': 'http://www.opendata.go.tz/dataset/idadi-ya-magonjwa-kutoka-idara-ya-wagonjwa-waliolazwa-kwa-mikoa',
        'source_link_3': 'http://www.opendata.go.tz/dataset/idadi-ya-magonjwa-kutoka-idara-ya-wagonjwa-wa-nje-kwa-mikoa',
        'source_name': 'opendata.go.tz',
    }


def get_family_planning_clients_profile(geo_code, geo_level, session):
    if geo_level != 'region' and geo_level != 'country': return {}

    family_planning_clients_data, _ = get_stat_data(
        'family planning clients', geo_level, geo_code, session, order_by='-total')
    total = family_planning_clients_data['Total']['numerators']['this']
    rate = family_planning_clients_data['New client rate']['numerators']['this']

    # age in 10 year groups
    def age_recode(f, x):
        age = int(x.replace('+', ''))
        if age > 49:
            return '80+'
        if age < 15:
            return 'under 15'
        return "15-49"

    age_dist_data, _ = get_stat_data(
        'age in completed years', geo_level, geo_code, session,
        table_fields=['age in completed years', 'sex', 'rural or urban'],
        recode=age_recode, exclude=['male'])
    all_women_aged_15_49 = age_dist_data['15-49']['numerators']['this']

    percentage_of_population = round((total / all_women_aged_15_49) * 100)

    return {
        'total': {
            'name': 'Total number of women aged 15-49 using family planning methods (2013)',
            'numerators': {'this': total},
            'values': {'this': total}
        },
        'rate': {
            'name': 'New client rate (2013)',
            'numerators': {'this': rate},
            'values': {'this': rate}
        },
        'percentage_of_population': {
            'name': 'Percentage of the population of women aged 15-49',
            'numerators': {'this': percentage_of_population},
            'values': {'this': percentage_of_population}
        },
        'source_link': 'http://www.opendata.go.tz/dataset/idadi-na-asilimia-ya-wateja-wa-huduma-ya-uzazi-wa-mpango-kwa-mikoa',
        'source_name': 'opendata.go.tz',
    }


def get_place_of_delivery_profile(geo_code, geo_level, session):
    if geo_level != 'region' and geo_level != 'country': return {}

    delivery_data, _ = get_stat_data(
        'place of delivery', geo_level, geo_code, session, order_by='-total')
    anc_projection = delivery_data['ANC projection']['numerators']['this']
    facility_birth_rate = delivery_data['Facility birth rate']['numerators']['this']
    del delivery_data['ANC projection']
    del delivery_data['Facility birth rate']
    return {
        'anc_projection': {
            'name': 'Antenatal care projection (2014)',
            'numerators': {'this': anc_projection},
            'values': {'this': anc_projection}
        },
        'facility_birth_rate': {
            'name': 'Facility Birth Rate (2014)',
            'numerators': {'this': facility_birth_rate},
            'values': {'this': facility_birth_rate}
        },
        'delivery_data': delivery_data,
        'source_link': 'http://www.opendata.go.tz/dataset/idadi-ya-wanaojifungulia-kwenye-vituo-vya-kutolea-huduma-za-afya-na-sehemu-zingine',
        'source_name': 'opendata.go.tz',
    }


def get_health_workers_distribution_profile(geo_code, geo_level, session):
    if geo_level != 'region' and geo_level != 'country': return {}

    hw_data, total = get_stat_data(
        'health workers', geo_level, geo_code, session, order_by='-total')

    hrh_patient_ratio = hw_data['HRH patient ratio']['numerators']['this']
    del hw_data['HRH patient ratio']
    del hw_data['MO and AMO per 10000']
    del hw_data['Nurses and midwives per 10000']
    del hw_data['Pharmacists per 10000']
    del hw_data['Clinicians per 10000']
    return {
        'total': {
            'name': 'Total health worker population (2014)',
            'numerators': {'this': total},
            'values': {'this': total}
        },
        'hrh_patient_ratio': {
            'name': 'Skilled health worker to patient ratio (2014)',
            'numerators': {'this': hrh_patient_ratio},
            'values': {'this': hrh_patient_ratio}
        },
        'health_worker_data': hw_data,
        'source_link': 'http://www.opendata.go.tz/dataset/idadi-ya-wafanyakazi-wa-afya-kwa-mikoa',
        'source_name': 'opendata.go.tz',
    }


def get_health_centers_distribution_profile(geo_code, geo_level, session):
    if geo_level == 'ward': return {}

    hc_data, total = get_stat_data(
        'health centers', geo_level, geo_code, session, order_by='-total')
    ho_data, _ = get_stat_data(
        'health center ownership', geo_level, geo_code, session)
    hiv_centers_data, hiv_c = get_stat_data(
        'hiv centers', geo_level, geo_code, session)

    return {
        'total': {
            'name': 'Total health centers in operation (2014)',
            'numerators': {'this': total},
            'values': {'this': total}
        },
        'hiv_centers': {
            'name': 'HIV care and treatment centers (2014)',
            'numerators': {'this': hiv_c},
            'values': {'this': hiv_c}
        },
        'health_center_data': hc_data,
        'health_center_ownership': ho_data,
        'source_link': 'http://www.opendata.go.tz/dataset/list-of-health-facilities-with-geographical-location',
        'source_name': 'opendata.go.tz',
    }


def get_tetanus_vaccine_profile(geo_code, geo_level, session):
    if geo_level != 'region' and geo_level != 'country': return {}

    tetanus_vaccine_data, _ = get_stat_data(
        'tetanus vaccine', geo_level, geo_code, session, order_by='-total')
    number_vaccinated = tetanus_vaccine_data['Vaccinated']['numerators']['this']
    coverage = tetanus_vaccine_data['Coverage']['numerators']['this']
    return {
        'number_vaccinated': {
            'name': 'Number of pregnant women received two or more Tetanus Toxoid vaccine (TT2+) (2014)',
            'numerators': {'this': number_vaccinated},
            'values': {'this': number_vaccinated}
        },
        'coverage': {
            'name': 'Coverage of pregnant women who received two or more Tetanus Toxoid vaccine (TT2+) (2014)',
            'numerators': {'this': coverage},
            'values': {'this': coverage}
        },
        'source_link': 'http://www.opendata.go.tz/dataset/number-and-percentage-of-pregnant-women-received-two-or-more-tetanus-toxoid-vaccine-tt2-by-region',
        'source_name': 'opendata.go.tz',
    }


def get_dictionary(key_one, key_two, val, dist):
    # return a dictionary with the second dictionary being 100 - val
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
        },
        'metadata': dist['metadata']
    }


def sum_up(arr, name):
    s = 0
    for x in arr:
        s += x['values']['this']
    return OrderedDict([('name', name), ('numerators', {'this': None}), ('values', {'this': s})])


def divide_by_one_thousand(dist):
    dist['values']['this'] = round((dist['values']['this'] * 1.0) / 1000, 1)
    return dist


def replace_name(dist, new_name):
    dist['name'] = new_name


def get_traffic_and_crimes_profile(geo_code, geo_level, session):
    
    if geo_level == 'ward' or geo_level == 'district':
        return {}

    traffic_and_crimes, _total_tc = get_stat_data('traffic and crimes', geo_level, geo_code, session,  order_by='-total')

    #total accidents
    total_accidents = 0
    total_accidents += int(traffic_and_crimes['Fatal Accidents']['numerators']['this'])
    total_accidents += int(traffic_and_crimes['Injury Accidents']['numerators']['this'])
    total_accidents += int(traffic_and_crimes['Normal Accidents']['numerators']['this'])

    #injuries
    male_injuries = int(traffic_and_crimes['Male Injured Persons']['numerators']['this'])
    female_injuries = int(traffic_and_crimes['Female Injured Persons']['numerators']['this'])
    total_injuries = male_injuries + female_injuries

    # deaths
    male_deaths = int(traffic_and_crimes['Male Dead Persons']['numerators']['this'])
    female_deaths = int(traffic_and_crimes['Female Dead Persons']['numerators']['this'])
    total_deaths  = male_deaths + female_deaths

    _, total_pop = get_stat_data(
        'sex', geo_level, geo_code, session,
        table_fields=['age in completed years', 'sex', 'rural or urban'])

    deaths_per_pop = round((total_deaths * 1e5)/total_pop)

    return {
        'traffic_and_crimes_overall': traffic_and_crimes,
        'injuries_by_gender':   {
            'male': {
                'name': 'Male',
                'numerators': {'this': male_injuries},
                'values': {'this':male_injuries}
            },
            'female': {
                'name': 'Female',
                'numerators': {'this': female_injuries},
                'values': {'this': female_injuries}
            },
            'metadata': traffic_and_crimes['metadata']
        },
        'fatalities_by_gender':   {
            'male': {
                'name': 'Men',
                'numerators': {'this': male_deaths},
                'values': {'this': male_deaths}
            },
            'female': {
                'name': 'Women',
                'numerators': {'this': female_deaths},
                'values': {'this': female_deaths}
            },
            'metadata': traffic_and_crimes['metadata']
        },
        'total_accidents': {
            'name': 'Number of  road accidents  (2015)',
            'numerators': {'this': total_accidents},
            'values': {'this': total_accidents}
        },
        'total_fatalities': {
            'name': 'Number of deaths cause by road accidents  (2015)',
            'numerators': {'this': total_deaths},
            'values': {'this': total_deaths}
        },
        'deaths_per_pop': {
            'name': 'People are killed in road accidents in every 100,000 population ',
            'numerators': {'this': deaths_per_pop},
            'values': {'this': deaths_per_pop}
        },
        'source_link': 'http://www.policeforce.go.tz/index.php/sw/takwimu',
        'source_name': 'Tanzania Police Force Report(2015)',

    }
