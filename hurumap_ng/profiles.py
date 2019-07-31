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
            tabs.append({'name': 'Demographics', 'href': '#demographics'})

        if not data['health'].get('is_missing'):
            tabs.append({'name': 'Health', 'href': '#health'})

        if not data['education'].get('is_missing'):
            tabs.append({'name': 'Education', 'href': '#education'})

        if not data['agriculture'].get('is_missing'):
            tabs.append({'name': 'Agriculture', 'href': '#agriculture'})

        if not data['crime'].get('is_missing'):
            tabs.append({'name': 'Corruption & Crime', 'href': '#crime'})

        if not data['drugs'].get('is_missing'):
            tabs.append({'name': 'Drugs', 'href': '#drugs'})

        if not data['finance'].get('is_missing'):
            tabs.append({'name': 'Finances', 'href': '#finance'})

        if not data['others'].get('is_missing'):
            tabs.append({'name': 'Others', 'href': '#others'})

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
                                         table_name='population_projection', percent=False)
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


    is_missing = compiled_indeces.get('is_missing') and \
                    birth_registration.get('is_missing') and \
                    population_projection.get('is_missing') and \
                    unemployment_rate.get('is_missing') and \
                    under_employment_rate.get('is_missing') and \
                    labour_force.get('is_missing')
    final_data = {
        'is_missing': is_missing,
        'compiled_indeces': compiled_indeces,
        'birth_registration': birth_registration,
        'unemployment_rate': unemployment_rate,
        'population_projection': population_projection,
        'under_employment_rate': under_employment_rate,
        'labour_force': labour_force,
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


    is_missing = arrested_suspects.get('is_missing') and \
                suspects_prosecuted.get('is_missing') and \
                conviction_secured.get('is_missing') and \
                cases_of_corruption.get('is_missing') and \
                bribery_report_rate.get('is_missing') and \
                offences_against_authority.get('is_missing') and \
                offences_against_property.get('is_missing') and \
                offences_against_person.get('is_missing') and \
                crime_summary.get('is_missing')

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
        'crime_summary': crime_summary
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
                maternal_mortality.get('is_missing')

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
        'maternal_mortality': maternal_mortality
    }
    return final_data

def get_others_profile(geo, session):
    diseal_yearly = LOCATIONNOTFOUND
    diseal_price_2015 = LOCATIONNOTFOUND
    diesel_price_2016 = LOCATIONNOTFOUND
    diesel_price_2017 = LOCATIONNOTFOUND
    diesel_price_2015 = LOCATIONNOTFOUND
    diesel_price_2018 = LOCATIONNOTFOUND
    diesel_price_2019 = LOCATIONNOTFOUND
    petrol_price_2016 = LOCATIONNOTFOUND
    petrol_price_2017 = LOCATIONNOTFOUND
    petrol_price_2018 = LOCATIONNOTFOUND
    petrol_price_2019 = LOCATIONNOTFOUND
    air_transportation_domestic = LOCATIONNOTFOUND
    air_transportation_international = LOCATIONNOTFOUND
    diesel_year = LOCATIONNOTFOUND
    driver_licences_processed = LOCATIONNOTFOUND
    mobile_subscription = LOCATIONNOTFOUND
    mineral_production = LOCATIONNOTFOUND
    telecom_subscription = LOCATIONNOTFOUND
    jamb = LOCATIONNOTFOUND
    employment_in_civil_services = LOCATIONNOTFOUND

    with dataset_context(year='2018'):
        try:
            diesel_price_2018, _ = get_stat_data(['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2018']},
                                         key_order=MONTH_ORDER,
                                         table_name='diesel_price', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            diesel_price_2017, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2017']},
                                         key_order=MONTH_ORDER,
                                         table_name='diesel_price', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)

        try:
            diesel_price_2016, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2016']},
                                         key_order=MONTH_ORDER,
                                         table_name='diesel_price', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            diesel_price_2015, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2015']},
                                         table_name='diesel_price', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            diesel_price_2019, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2019']},
                                         exclude_zero=False,
                                         table_name='diesel_price', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            petrol_price_2016, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2016']},
                                         table_name='petrol_price', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            petrol_price_2017, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2017']},
                                         table_name='petrol_price', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            petrol_price_2018, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2018']},
                                         key_order=MONTH_ORDER,
                                         table_name='petrol_price', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            petrol_price_2019, _ = get_stat_data(fields=['month',], geo=geo,
                                         session=session,
                                         only={'year': ['2019']},
                                         table_name='petrol_price', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            air_transportation_domestic, _ = get_stat_data(['month, depature_arrival'], geo=geo,
                                         session=session,
                                         table_name='air_transportation_domestic', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            air_transportation_international, _ = get_stat_data(['month, depature_arrival'], geo=geo,
                                         session=session,
                                         table_name='air_transportation_international', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            diesel_year, _ = get_stat_data(['diesel_year'], geo=geo,
                                         session=session,
                                         table_name='diesel_yearly', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


        try:
            driver_licences_processed, _ = get_stat_data(['year'], geo=geo,
                                         session=session,
                                         table_name='driver_licences_processed', percent=False)
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


        diesel_price = {
            'is_missing': diesel_price_2019.get('is_missing') and \
                            diesel_price_2018.get('is_missing') and \
                            diesel_price_2017.get('is_missing') and \
                            diesel_price_2016.get('is_missing') and \
                            diesel_price_2015.get('is_missing'),
            '2019': diesel_price_2019,
            '2018': diesel_price_2018,
            '2017': diesel_price_2017,
            '2016': diesel_price_2016,
            '2015': diesel_price_2015
        }

        petrol_price = {
            'is_missing': petrol_price_2018.get('is_missing') and \
                            petrol_price_2017.get('is_missing') and \
                            petrol_price_2016.get('is_missing') and \
                            petrol_price_2016.get('is_missing'),
            '2019': petrol_price_2019,
            '2018': petrol_price_2018,
            '2017': petrol_price_2017,
            '2016': petrol_price_2016
        }

    is_missing = diesel_price.get('is_missing') and \
                petrol_price.get('is_missing') and \
                air_transportation_domestic.get('is_missing') and \
                air_transportation_international.get('is_missing') and \
                diesel_year.get('is_missing') and \
                driver_licences_processed.get('is_missing') and \
                employment_in_civil_services.get('is_missing')

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
        'employment_in_civil_services': employment_in_civil_services
    }
    return final_data

def get_finance_profile(geo, session):
    bank_credit = LOCATIONNOTFOUND
    bank_deposit = LOCATIONNOTFOUND
    debt_data = LOCATIONNOTFOUND
    faac = LOCATIONNOTFOUND
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
            faac, _ = get_stat_data(fields=['allocation'], geo=geo,
                                         session=session,
                                         table_name='faac', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)
        
        try:
            nominal_gdp, _ = get_stat_data(fields=['year', 'sector'], geo=geo,
                                    session=session, table_name='nominal_gdp', percent=False)
        except Exception:
            log.warn("Could not get data", exc_info=True)


    is_missing = bank_deposit.get('is_missing') and \
                 bank_credit.get('is_missing') and \
                 debt_data.get('is_missing') and \
                 faac.get('is_missing') and \
                 nominal_gdp.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'bank_credit': bank_credit,
        'bank_deposit': bank_deposit,
        'debt_data': debt_data,
        'faac': faac,
        'nominal_gdp': nominal_gdp
    }

    return final_data


def get_agriculture_profile(geo, session):
    all_consumer_price = LOCATIONNOTFOUND
    food_consumer_price = LOCATIONNOTFOUND
    groundnut_production = LOCATIONNOTFOUND

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


    is_missing = all_consumer_price.get('is_missing') and \
                food_consumer_price.get('is_missing') and \
                groundnut_production.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'all_consumer_price': all_consumer_price,
        'food_consumer_price': food_consumer_price,
        'groundnut_production': groundnut_production
    }
    return final_data
