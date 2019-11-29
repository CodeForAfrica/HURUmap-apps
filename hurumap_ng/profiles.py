from collections import OrderedDict
import logging

from django.conf import settings
from wazimap.data.utils import (current_context, dataset_context, get_session,
                                get_stat_data, group_remainder)
from wazimap.geo import geo_data

log = logging.getLogger(__name__)

SECTIONS = settings.HURUMAP.get('topics', {})

LOCATIONNOTFOUND = {'is_missing': True,
                    'name': 'No Data Found',
                    'numerators': {'this': 0},
                    'values': {'this': 0}
                    }

MONTH_ORDER= ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']

def _create_single_value_dist(name='', value=0):
    return {
        'name': name,
        'numerators': {'this': value},
        'values': {'this': value},
    }

def _remove_empty_entry(dist):
    for k, v in dict(dist).items():
        if not bool(v):
            del dist[k]

    return dist
    
def _create_multiple_data_dist(fields, geo, session, only_field, only_values, tablename, order=None, percent=False):

    result = { 'is_missing': True }

    for val in only_values:
        data_dist = LOCATIONNOTFOUND

        try:
            data_dist, _ = get_stat_data(fields=fields, geo=geo,
                                    session=session,
                                    only={ only_field : [val] },
                                    key_order=order,
                                    table_name=tablename, percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        result['is_missing'] = result['is_missing'] and data_dist.get('is_missing')
        result[val] =  _remove_empty_entry(data_dist)

    return result

def get_profile(geo, profile_name, request):
    session = get_session()

    try:
        data = {}

        sections = list(SECTIONS)

        for section in sections:
            function_name = 'get_%s_profile' % section
            if function_name in globals():
                func = globals()[function_name]
                data[section] = func(geo, session)


        tabs = []
        if not data['demographics'].get('is_missing'):
            tabs.append({'name': 'Demographics', 'href': '#demographics', 'class': 'fa fa-user'})

        if not data['health'].get('is_missing'):
            tabs.append({'name': 'Health', 'href': '#health', 'class': 'fa fa-medkit'})

        if not data['education'].get('is_missing'):
            tabs.append({'name': 'Education', 'href': '#education', 'class': 'fa fa-graduation-cap'})

        if not data['agriculture'].get('is_missing'):
            tabs.append({'name': 'Agriculture', 'href': '#agriculture', 'class': 'fa fa-tree'})

        if not data['crime'].get('is_missing'):
            tabs.append({'name': 'Corruption & Crime', 'href': '#crime', 'class': 'fa fa-shield'})

        if not data['drugs'].get('is_missing'):
            tabs.append({'name': 'Drugs', 'href': '#drugs', 'class': 'fa fa-ban'})

        if not data['finance'].get('is_missing'):
            tabs.append({'name': 'Finances', 'href': '#finance', 'class': 'fa fa-money'})

        if not data['others'].get('is_missing'):
            tabs.append({'name': 'Others', 'href': '#others', 'class': 'fa fa-folder'})

        data['tabs'] = tabs
        return data

    finally:
        session.close()

"""
fields, geo, session, table_dataset=None, table_universe=None,
                  table_fields=None, table_name=None, **kwargs
"""

def get_demographics_profile(geo, session):
    compiled_indeces = LOCATIONNOTFOUND
    birth_registration = LOCATIONNOTFOUND
    population_projection = LOCATIONNOTFOUND
    unemployment_rate = LOCATIONNOTFOUND
    under_employment_rate = LOCATIONNOTFOUND
    labour_force = LOCATIONNOTFOUND
    population_sex = LOCATIONNOTFOUND
    governor_deputy_governor = LOCATIONNOTFOUND
    local_govt_gender_dist = LOCATIONNOTFOUND
    officer_house_assembly = LOCATIONNOTFOUND
    number_of_officials = LOCATIONNOTFOUND
    total_population = 0

    with dataset_context(year='2018'):
        try:
            compiled_indeces, _ = get_stat_data(fields=['compiled_indeces'], geo=geo,
                                         session=session,
                                         table_name='compiled_indeces', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            birth_registration, _ = get_stat_data(fields=['age'], geo=geo,
                                         session=session,
                                         table_name='birth_registration', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            population_projection, _ = get_stat_data(fields=['year', 'gender'], geo=geo,
                                         session=session,
                                         table_name='population_projection', percent=False, order_by='gender')
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            unemployment_rate, _ = get_stat_data(fields=['year', 'period'], geo=geo,
                                         session=session,
                                         table_name='unemployment_rate', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            under_employment_rate, _ = get_stat_data(fields=['year', 'period'], geo=geo,
                                         session=session,
                                         table_name='under_employment_rate', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            labour_force, _ = get_stat_data(fields=['year', 'period'], geo=geo,
                                         session=session,
                                         table_name='labour_force', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            population_sex, total_population = get_stat_data(fields=['population_sex'], geo=geo,
                                    session=session, table_name='population_sex', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            governor_deputy_governor, _ = get_stat_data(fields=['position', 'gender'], geo=geo,
                                    session=session, table_name='governor_deputy_governor', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            local_govt_gender_dist, _ = get_stat_data(fields=['position', 'gender'], geo=geo,
                                    session=session, table_name='local_govt_gender_dist', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            officer_house_assembly, _ = get_stat_data(fields=['position', 'gender'], geo=geo,
                                    session=session,
                                    recode={'gender': { 'Female': 'F', 'Male': 'M'}},
                                    exclude_zero=True,
                                    key_order={'gender': ['Female', 'Male']},
                                    table_name='officer_house_assembly', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            number_of_officials, _ = get_stat_data(fields=['position'], geo=geo,
                                         session=session,
                                         table_name='number_of_officials', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)



    is_missing = compiled_indeces.get('is_missing') and \
                    birth_registration.get('is_missing') and \
                    population_projection.get('is_missing') and \
                    unemployment_rate.get('is_missing') and \
                    under_employment_rate.get('is_missing') and \
                    labour_force.get('is_missing') and \
                    governor_deputy_governor.get('is_missing') and \
                    local_govt_gender_dist.get('is_missing') and \
                    officer_house_assembly.get('is_missing') and \
                    number_of_officials.get('is_missing')
    final_data = {
        'is_missing': is_missing,
        'compiled_indeces': compiled_indeces,
        'birth_registration': birth_registration,
        'unemployment_rate': unemployment_rate,
        'population_projection': population_projection,
        'under_employment_rate': under_employment_rate,
        'labour_force': labour_force,
        'governor_deputy_governor': governor_deputy_governor,
        'local_govt_gender_dist': local_govt_gender_dist,
        'officer_house_assembly': officer_house_assembly,
        'number_of_officials': number_of_officials,
        'total_population': {
                'name': 'People',
                'values': {'this': total_population },
                'numerators': { 'this': total_population }
        }
    }
    return final_data

def get_crime_profile(geo, session):
    arrested_suspects = LOCATIONNOTFOUND
    suspects_prosecuted = LOCATIONNOTFOUND
    conviction_secured = LOCATIONNOTFOUND
    bribery_prevalence = 0
    bribery_report_rate = LOCATIONNOTFOUND
    cases_of_corruption = LOCATIONNOTFOUND
    avg_number_bribes = 0
    offences_against_person = LOCATIONNOTFOUND
    offences_against_property = LOCATIONNOTFOUND
    offences_against_authority = LOCATIONNOTFOUND
    crime_summary = LOCATIONNOTFOUND
    prison_capacity = LOCATIONNOTFOUND
    prison_population = LOCATIONNOTFOUND

    with dataset_context(year='2016'):
        try:
            arrested_suspects, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='arrested_suspects', percent=False, order_by='year')
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            counselling_concluded, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='counselling_concluded', percent=False, order_by='year')
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            suspects_prosecuted, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='suspects_prosecuted', percent=False, order_by='year')
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            conviction_secured, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='conviction_secured', percent=False, order_by='year')
        except Exception:
            log.warn("Could not get data", exc_info=True)


    with dataset_context(year='2018'):
        try:
            _, bribery_prevalence = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='bribery_prevalence', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            cases_of_corruption, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='cases_of_corruption', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            _, avg_number_bribes = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='avg_number_bribes', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            bribery_report_rate, _ = get_stat_data(fields=['status'], geo=geo,
                                         session=session,
                                         table_name='bribery_report_rate')
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            offences_against_person, _ = get_stat_data(fields=['crime'], geo=geo,
                                         session=session,
                                         table_name='offences_against_person')
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            offences_against_property, _ = get_stat_data(fields=['crime'], geo=geo,
                                         session=session,
                                         table_name='offences_against_property')
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            offences_against_authority, _ = get_stat_data(fields=['crime'], geo=geo,
                                         session=session,
                                         table_name='offences_against_authority')
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            crime_summary, _ = get_stat_data(fields=['crime'], geo=geo,
                                         session=session,
                                         table_name='crime_summary', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            prison_capacity, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='prison_capacity')
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            prison_population, _ = get_stat_data(fields=['gender', 'year'], geo=geo,
                                         session=session,
                                         table_name='prison_population', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


    is_missing = arrested_suspects.get('is_missing') and \
                suspects_prosecuted.get('is_missing') and \
                conviction_secured.get('is_missing') and \
                cases_of_corruption.get('is_missing') and \
                bribery_report_rate.get('is_missing') and \
                offences_against_authority.get('is_missing') and \
                offences_against_property.get('is_missing') and \
                offences_against_person.get('is_missing') and \
                crime_summary.get('is_missing') and \
                prison_capacity.get('is_missing') and \
                prison_population.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'arrested_suspects': arrested_suspects,
        'suspects_prosecuted': suspects_prosecuted,
        'conviction_secured': conviction_secured,
        'bribery_prevalence': _create_single_value_dist("Prevalence of bribery, 2016", bribery_prevalence),
        'cases_of_corruption': cases_of_corruption,
        'avg_number_bribes': _create_single_value_dist("Average number of bribes, 2016", avg_number_bribes),
        'bribery_report_rate': bribery_report_rate,
        'offences_against_person': offences_against_person,
        'offences_against_property': offences_against_property,
        'offences_against_authority': offences_against_authority,
        'crime_summary': crime_summary,
        'prison_capacity': prison_capacity,
        'prison_population': prison_population
    }
    return final_data

def get_drugs_profile(geo, session):
    drugs_seized = LOCATIONNOTFOUND
    drug_arrests = LOCATIONNOTFOUND
    drug_counselling = LOCATIONNOTFOUND
    drug_convictions = LOCATIONNOTFOUND
    drug_use = LOCATIONNOTFOUND

    with dataset_context(year='2016'):
        try:
            drugs_seized, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='drugs_seized', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


    with dataset_context(year='2018'):
        try:
            drug_arrests, _ = get_stat_data(fields=['gender'], geo=geo,
                                         session=session,
                                         table_name='drug_arrests', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            drug_counselling, _ = get_stat_data(fields=['gender'], geo=geo,
                                         session=session,
                                         table_name='drug_counselling', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            drug_convictions, _ = get_stat_data(fields=['gender'], geo=geo,
                                         session=session,
                                         table_name='drug_convictions', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            drug_use, _ = get_stat_data(fields=['drug'], geo=geo,
                                         session=session,
                                         table_name='drug_use', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


    is_missing = drugs_seized.get('is_missing') and \
                    drug_arrests.get('is_missing') and \
                    drug_counselling.get('is_missing') and \
                    drug_convictions.get('is_missing') and \
                    drug_use.get('is_missing')
    final_data = {
        'is_missing': is_missing,
        'drugs_seized': drugs_seized,
        'drug_arrests': drug_arrests,
        'drug_counselling': drug_counselling,
        'drug_convictions': drug_convictions,
        'drug_use': drug_use
    }
    return final_data

def get_education_profile(geo, session):
    drugs_seized = LOCATIONNOTFOUND
    junior_secondary_school_enrollment = LOCATIONNOTFOUND
    senior_secondary_school_enrollment = LOCATIONNOTFOUND
    technical_school = LOCATIONNOTFOUND
    primary_school_enrollment = LOCATIONNOTFOUND
    hdi_education = LOCATIONNOTFOUND
    literacy = LOCATIONNOTFOUND

    with dataset_context(year='2016'):
        try:
            hdi_education, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='hdi_education', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


    with dataset_context(year='2018'):
        try:
            senior_secondary_school_enrollment, _ = get_stat_data(
                ['year', 'gender'], geo, session, percent=False, table_name='senior_secondary_school_enrollment')
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            junior_secondary_school_enrollment, _ = get_stat_data(
                ['year', 'gender'], geo, session, percent=False,
                table_name='junior_secondary_school_enrollment')
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            technical_school, _ = get_stat_data(
                ['year'], geo, session, percent=False,
                table_name='technical_school')
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            primary_school_enrollment, _ = get_stat_data(
                ['year', 'gender'], geo, session, percent=False,
                table_name='primary_school_enrollment')
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            literacy, _ = get_stat_data(
                ['gender'], geo, session, percent=False,
                table_name='literacy')
        except Exception:
            log.warn("Could not get data", exc_info=True)

    is_missing = hdi_education.get('is_missing') and \
                junior_secondary_school_enrollment.get('is_missing') and \
                senior_secondary_school_enrollment.get('is_missing') and \
                technical_school.get('is_missing') and \
                primary_school_enrollment.get('is_missing') and \
                literacy.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'hdi_education': hdi_education,
        'junior_secondary_school_enrollment': junior_secondary_school_enrollment,
        'senior_secondary_school_enrollment': senior_secondary_school_enrollment,
        'technical_school': technical_school,
        'primary_school_enrollment': primary_school_enrollment,
        'literacy': literacy
    }
    return final_data

def get_health_profile(geo, session):
    counselling_concluded = LOCATIONNOTFOUND
    hiv_patients = LOCATIONNOTFOUND
    access_to_wash = LOCATIONNOTFOUND
    adolescent_fertility = LOCATIONNOTFOUND
    contraceptive_use = LOCATIONNOTFOUND
    vaccine_coverage = LOCATIONNOTFOUND
    hiv_arvs = LOCATIONNOTFOUND
    fertility_rate = LOCATIONNOTFOUND
    dentists_per_sex_year = LOCATIONNOTFOUND
    doctors_per_sex_year = LOCATIONNOTFOUND
    maternal_mortality = LOCATIONNOTFOUND
    immunization_coverage = LOCATIONNOTFOUND
    road_traffic_accidents = LOCATIONNOTFOUND
    underweight_children = LOCATIONNOTFOUND

    with dataset_context(year='2016'):
        try:
            counselling_concluded, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='counselling_concluded', percent=False, order_by='year')
        except Exception:
            log.warn("Could not get data", exc_info=True)


    with dataset_context(year='2018'):
        try:
            hiv_patients, _ = get_stat_data(fields=['year', 'gender'], geo=geo,
                                         session=session,
                                         table_name='hiv_patients', percent=False, order_by='year')
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            fertility_rate, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='fertility_rate', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            access_to_wash, _ = get_stat_data(fields=['access_to_wash'], geo=geo,
                                         session=session,
                                         table_name='access_to_wash', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            adolescent_fertility, _ = get_stat_data(fields=['adolescent_fertility_year'], geo=geo,
                                         session=session,
                                         table_name='adolescent_fertility', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            contraceptive_use, _ = get_stat_data(fields=['contraceptive_method'], geo=geo,
                                         session=session,
                                         table_name='contraceptive_use', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            vaccine_coverage, _ = get_stat_data(fields=['vaccine'], geo=geo,
                                         session=session,
                                         table_name='vaccine_coverage', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            hiv_arvs, _ = get_stat_data(fields=['year', 'gender'], geo=geo,
                                         session=session,
                                         table_name='hiv_arvs', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            doctors_per_sex_year, tot_doctors = get_stat_data(
                ['number_of_dentist_year', 'number_of_dentist_sex'], geo, session, percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            dentists_per_sex_year, tot_dentists = get_stat_data(
                ['number_of_doctors_year', 'number_of_doctors_sex'], geo, session, percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            maternal_mortality, _ = get_stat_data(
                ['year'], geo, session, percent=False, table_name='maternal_mortality')
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            immunization_coverage, _ = get_stat_data(
                ['immunization', 'method'], geo, session, percent=False, table_name='immunization_coverage')
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            road_traffic_accidents, _ = get_stat_data(
                ['year', 'gender'], geo, session, percent=False, table_name='road_traffic_accidents')
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            underweight_children, _ = get_stat_data(
                ['state'], geo, session, percent=False, table_name='underweight_children')
        except Exception:
            log.warn("Could not get data", exc_info=True)

    is_missing = counselling_concluded.get('is_missing') and \
                hiv_patients.get('is_missing') and \
                access_to_wash.get('is_missing') and \
                adolescent_fertility.get('is_missing') and \
                contraceptive_use.get('is_missing') and \
                vaccine_coverage.get('is_missing') and \
                hiv_arvs.get('is_missing') and \
                fertility_rate.get('is_missing') and \
                dentists_per_sex_year.get('is_missing') and \
                doctors_per_sex_year.get('is_missing') and \
                maternal_mortality.get('is_missing') and \
                immunization_coverage.get('is_missing') and \
                underweight_children.get('is_missing') and \
                road_traffic_accidents.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'counselling_concluded': counselling_concluded,
        'hiv_patients': hiv_patients,
        'access_to_wash': access_to_wash,
        'adolescent_fertility': adolescent_fertility,
        'contraceptive_use': contraceptive_use,
        'vaccine_coverage': vaccine_coverage,
        'hiv_arvs': hiv_arvs,
        'fertility_rate': fertility_rate,
        'doctors_per_sex_year': doctors_per_sex_year,
        'dentists_per_sex_year': dentists_per_sex_year,
        'maternal_mortality': maternal_mortality,
        'immunization_coverage': immunization_coverage,
        'road_traffic_accidents': road_traffic_accidents,
        'underweight_children': underweight_children
    }
    return final_data

def get_others_profile(geo, session):
    diesel_year = LOCATIONNOTFOUND
    driver_licences_processed = LOCATIONNOTFOUND
    driver_licences_processed_per_gender = LOCATIONNOTFOUND
    driver_licences_processed_per_age_group = LOCATIONNOTFOUND
    mobile_subscription = LOCATIONNOTFOUND
    mineral_production = LOCATIONNOTFOUND
    telecom_subscription = LOCATIONNOTFOUND
    jamb = LOCATIONNOTFOUND
    employment_in_civil_services = LOCATIONNOTFOUND
    travel_certificates = LOCATIONNOTFOUND
    passport_issued = LOCATIONNOTFOUND
    passport_application = LOCATIONNOTFOUND
    passport_re_issued = LOCATIONNOTFOUND
    international_flights = LOCATIONNOTFOUND
    domestic_flights = LOCATIONNOTFOUND
    marriage_distribution = LOCATIONNOTFOUND
    youth_services_corp_dev = LOCATIONNOTFOUND
    number_of_plates = LOCATIONNOTFOUND
    postal_data = LOCATIONNOTFOUND

    with dataset_context(year='2018'):
        try:
            diesel_year, _ = get_stat_data(['diesel_year'], geo=geo,
                                         session=session,
                                         table_name='diesel_yearly', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            domestic_flights, _ = get_stat_data(['flight'], geo=geo,
                                         session=session,
                                         table_name='domestic_flights', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            international_flights, _ = get_stat_data(['flight'], geo=geo,
                                         session=session,
                                         table_name='international_flights', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            driver_licences_processed, _ = get_stat_data(['year'], geo=geo,
                                         session=session,
                                         table_name='driver_licences_processed', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            driver_licences_processed_per_age_group, _ = get_stat_data(['year', 'age_group'], geo=geo,
                                         session=session,
                                         table_name='driver_licences_processed_age', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            driver_licences_processed_per_gender, _ = get_stat_data(['year', 'gender'], geo=geo,
                                         session=session,
                                         table_name='driver_licences_processed_gender', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            mobile_subscription, _ = get_stat_data(fields=['network', 'subscription_type'], geo=geo,
                                     session=session,
                                     table_name='mobile_subscription', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            mineral_production, _ = get_stat_data(fields=['year'], geo=geo,
                                     session=session,
                                     table_name='mineral_production', percent=False, order_by='year')
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            telecom_subscription, _ = get_stat_data(fields=['period', 'subscription_type'], geo=geo,
                                     session=session,
                                     table_name='telecom_subscription', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            jamb, _ = get_stat_data(fields=['year', 'gender'], geo=geo,
                                     session=session,
                                     table_name='jamb', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            jamb, _ = get_stat_data(fields=['year', 'gender'], geo=geo,
                                     session=session,
                                     table_name='jamb', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            employment_in_civil_services, _ = get_stat_data(fields=['level', 'gender'], geo=geo,
                                     session=session,
                                     table_name='employment_in_civil_services', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)
        
        try:
            travel_certificates, _ = get_stat_data(fields=['year'], geo=geo,
                                     session=session,
                                     table_name='travel_certificates', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)
        
        try:
            passport_issued, _ = get_stat_data(fields=['year'], geo=geo,
                                     session=session,
                                     table_name='passport_issued', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            passport_re_issued, _ = get_stat_data(fields=['month'], geo=geo,
                                     session=session,
                                     key_order=MONTH_ORDER,
                                     table_name='passport_re_issued', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            passport_application, _ = get_stat_data(fields=['age_group', 'year'], geo=geo,
                                     session=session,
                                     table_name='passport_application', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            marriage_distribution, _ = get_stat_data(fields=['year'], geo=geo,
                                     session=session,
                                     table_name='marriage_distribution', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            youth_services_corp_dev, _ = get_stat_data(fields=['year', 'gender'], geo=geo,
                                     session=session,
                                     table_name='youth_services_corp_dev', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            number_of_plates, _ = get_stat_data(fields=['year'], geo=geo,
                                     session=session,
                                     table_name='number_of_plates', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            postal_data, _ = get_stat_data(fields=['year'], geo=geo,
                                     session=session,
                                     table_name='postal_data', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        diesel_price = _create_multiple_data_dist(
            fields=['month'], geo=geo, session=session, only_field='year',
            only_values=['2015', '2016', '2017', '2018', '2019'],
            tablename='diesel_price', order=MONTH_ORDER )

        petrol_price = _create_multiple_data_dist(
            fields=['month'], geo=geo, session=session, only_field='year',
            only_values=['2016', '2017', '2018', '2019'],
            tablename='petrol_price', order=MONTH_ORDER )

        petroleum_motor_spirit_price = _create_multiple_data_dist(
            fields=['month'], geo=geo, session=session, only_field='year',
            only_values=['2016', '2017', '2018', '2019'],
            tablename='petroleum_motor_spirit_price', order=MONTH_ORDER )

        transport_withincity_fare = _create_multiple_data_dist(
            fields=['month'], geo=geo, session=session, only_field='year', 
            only_values=['2016', '2017', '2018', '2019'], 
            tablename='transport_withincity_fare', order=MONTH_ORDER )

        transport_air_fare = _create_multiple_data_dist(
            fields=['month'], geo=geo, session=session, only_field='year', 
            only_values=['2016', '2017', '2018', '2019'],
            tablename='transport_air_fare', order=MONTH_ORDER )

        transport_motorcycle_fare = _create_multiple_data_dist(
            fields=['month'], geo=geo, session=session, only_field='year', 
            only_values=['2016', '2017', '2018', '2019'],
            tablename='transport_motorcycle_fare', order=MONTH_ORDER )

        transport_bus_intercity_fare = _create_multiple_data_dist(
            fields=['month'], geo=geo, session=session, only_field='year', 
            only_values=['2016', '2017', '2018', '2019'],
            tablename='transport_bus_intercity_fare', order=MONTH_ORDER )

        air_transportation_domestic = _create_multiple_data_dist(
            fields=['month'], geo=geo, session=session, only_field='depature_arrival', 
            only_values=['Departure', 'Arrival'],
            tablename='air_transportation_domestic', order=MONTH_ORDER )

        air_transportation_international = _create_multiple_data_dist(
            fields=['month'], geo=geo, session=session, only_field='depature_arrival', 
            only_values=['Departure', 'Arrival'],
            tablename='air_transportation_international', order=MONTH_ORDER )

        lpg_price_5kg = _create_multiple_data_dist(
            fields=['month'], geo=geo, session=session, only_field='year',
            only_values=['2016', '2017', '2018', '2019'],
            tablename='lpg_price_5kg', order=MONTH_ORDER )

        lpg_price_10kg = _create_multiple_data_dist(
            fields=['month'], geo=geo, session=session, only_field='year',
            only_values=['2016', '2017', '2018', '2019'],
            tablename='lpg_price_10kg', order=MONTH_ORDER )


    is_missing = diesel_price.get('is_missing') and \
                petrol_price.get('is_missing') and \
                air_transportation_domestic.get('is_missing') and \
                air_transportation_international.get('is_missing') and \
                diesel_year.get('is_missing') and \
                driver_licences_processed.get('is_missing') and \
                employment_in_civil_services.get('is_missing') and \
                travel_certificates.get('is_missing') and \
                transport_air_fare.get('is_missing') and \
                transport_withincity_fare.get('is_missing') and \
                transport_bus_intercity_fare.get('is_missing') and \
                transport_motorcycle_fare.get('is_missing') and \
                passport_issued.get('is_missing') and \
                passport_application.get('is_missing') and \
                passport_re_issued.get('is_missing') and \
                international_flights.get('is_missing') and \
                domestic_flights.get('is_missing') and \
                lpg_price_10kg.get('is_missing') and \
                lpg_price_5kg.get('is_missing') and \
                driver_licences_processed_per_age_group.get('is_missing') and \
                driver_licences_processed_per_gender.get('is_missing') and \
                marriage_distribution.get('is_missing') and \
                youth_services_corp_dev.get('is_missing') and \
                number_of_plates.get('is_missing') and \
                postal_data.get('is_missing')
                


    final_data = {
        'is_missing': is_missing,
        'diesel_price': diesel_price,
        'petrol_price': petrol_price,
        'air_transportation_domestic': air_transportation_domestic,
        'air_transportation_international': air_transportation_international,
        'diesel_year': diesel_year,
        'driver_licences_processed': driver_licences_processed,
        'mobile_subscription': mobile_subscription,
        'mineral_production': mineral_production,
        'telecom_subscription': telecom_subscription,
        'jamb': jamb,
        'employment_in_civil_services': employment_in_civil_services,
        'travel_certificates': travel_certificates,
        'transport_air_fare': transport_air_fare,
        'transport_bus_intercity_fare': transport_bus_intercity_fare,
        'transport_motorcycle_fare': transport_motorcycle_fare,
        'transport_withincity_fare': transport_withincity_fare,
        'petroleum_motor_spirit_price': petroleum_motor_spirit_price,
        'passport_issued': passport_issued,
        'passport_application': passport_application,
        'passport_re_issued': _remove_empty_entry(passport_re_issued),
        'domestic_flights': domestic_flights,
        'international_flights': international_flights,
        'lpg_price_10kg': lpg_price_10kg,
        'lpg_price_5kg': lpg_price_5kg,
        'driver_licences_processed_per_gender': driver_licences_processed_per_gender,
        'driver_licences_processed_per_age_group': driver_licences_processed_per_age_group,
        'marriage_distribution': marriage_distribution,
        'youth_services_corp_dev': youth_services_corp_dev,
        'number_of_plates': number_of_plates,
        'postal_data': postal_data
    }
    return final_data

def get_finance_profile(geo, session):
    bank_credit = LOCATIONNOTFOUND
    bank_deposit = LOCATIONNOTFOUND
    debt_data = LOCATIONNOTFOUND
    faac = LOCATIONNOTFOUND
    generated_revenue = LOCATIONNOTFOUND
    faac_year_2016 = LOCATIONNOTFOUND
    faac_year_2017 = LOCATIONNOTFOUND
    faac_year_2018 = LOCATIONNOTFOUND
    faac_year_2019 = LOCATIONNOTFOUND
    nominal_gdp = LOCATIONNOTFOUND

    with dataset_context(year='2018'):
        try:
            bank_credit, _ = get_stat_data(['credit_year'], geo=geo,
                                         session=session,
                                         table_name='bank_credit', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            bank_deposit, _ = get_stat_data(['deposit_year'], geo=geo,
                                         session=session,
                                         table_name='bank_deposit', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            debt_data, _ = get_stat_data(fields=['year', 'debt_type'], geo=geo,
                                         session=session,
                                         percent=False, order_by='debt_type')
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            faac, _ = get_stat_data(fields=['allocation', 'month'], geo=geo,
                                         session=session,
                                         table_name='faac', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            generated_revenue, _ = get_stat_data(fields=['revenue_type'], geo=geo,
                                         session=session,
                                         table_name='generated_revenue', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)
        
        try:
            nominal_gdp, _ = get_stat_data(fields=['year', 'sector'], geo=geo,
                                    session=session, table_name='nominal_gdp', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

    faac_yearly = _create_multiple_data_dist(
            fields=['month'], geo=geo, session=session, only_field='year', 
            only_values=['2016', '2017', '2018', '2019'],
            tablename='faac_yearly', order=MONTH_ORDER )


    is_missing = bank_deposit.get('is_missing') and \
                 bank_credit.get('is_missing') and \
                 debt_data.get('is_missing') and \
                 faac.get('is_missing') and \
                 faac_yearly.get('is_missing') and \
                 nominal_gdp.get('is_missing') and \
                 generated_revenue.get('is_missing')
                 

    final_data = {
        'is_missing': is_missing,
        'bank_credit': bank_credit,
        'bank_deposit': bank_deposit,
        'debt_data': debt_data,
        'faac': faac,
        'faac_yearly': faac_yearly,
        'nominal_gdp': nominal_gdp,
        'generated_revenue': generated_revenue
    }

    return final_data

def get_agriculture_profile(geo, session):
    all_consumer_price = LOCATIONNOTFOUND
    food_consumer_price = LOCATIONNOTFOUND
    groundnut_production = LOCATIONNOTFOUND
    maize_production = LOCATIONNOTFOUND

    with dataset_context(year='2018'):
        try:
            all_consumer_price, _ = get_stat_data(fields=['year', 'month'], geo=geo,
                                         session=session,
                                         only={'item': ["All Items"]},
                                         table_name='consumer_price_index', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            food_consumer_price, _ = get_stat_data(fields=['year', 'month'], geo=geo,
                                         session=session,
                                         only={'item': ["Food"]},
                                         table_name='consumer_price_index', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            groundnut_production, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='groundnut_production', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            maize_production, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='maize_production', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


    is_missing = all_consumer_price.get('is_missing') and \
                food_consumer_price.get('is_missing') and \
                groundnut_production.get('is_missing') and \
                maize_production.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'all_consumer_price': all_consumer_price,
        'food_consumer_price': food_consumer_price,
        'groundnut_production': groundnut_production,
        'maize_production': maize_production
    }
    return final_data
