from wazimap.data.utils import (calculate_median,
                                get_session, get_stat_data, group_remainder,
                                merge_dicts, get_datatable, current_context,
                                dataset_context)
from wazimap.geo import LocationNotFound

from utils import *

LOCATIONNOTFOUND = {'is_missing': True, 'name': 'No Data Found',
                    'numerators': {'this': 0},
                    'values': {'this': 0}}

def _create_single_value_dist(name='', value=0):
    return {
        'name': name,
        'numerators': {'this': value},
        'values': {'this': value},
    }

def get_profile(geo, profile_name, request):
    year = current_context().get('year')
    session = get_session()
    data = {}
    try:
        data['demographics'] = get_population(geo, session)
        data['primary_release_year'] = year
        data['afrobarometer'] = get_afrobarometer_profile(geo, session)
        return data
    finally:
        session.close()


def get_population(geo, session):
    with dataset_context(year='2017'):
        sex_dist, total_population_sex = LOCATIONNOTFOUND, 0
        residence_dist, total_population_residence = LOCATIONNOTFOUND, 0
        religion_dist, total_population_religion = LOCATIONNOTFOUND, 0

        try:
            sex_dist, total_population_sex = get_stat_data(
                'sex', geo, session, table_fields=['sex'])
        except Exception:
            pass
        try:
            residence_dist, total_population_residence = get_stat_data(
                'residence', geo, session,
                table_fields=['residence'])
        except Exception:
            pass

        try:
            religion_dist, total_population_religion = get_stat_data(
                'religion', geo, session,
                table_fields=['religion'])
        except Exception:
            pass

        total_population = 0
        is_missing = sex_dist.get('is_missing') and \
            residence_dist.get('is_missing') and \
                     religion_dist.get('is_missing')
        if not is_missing:
            total_population = total_population_sex if total_population_sex > 0 else total_population_residence
        total_population_dist = _create_single_value_dist(
            'People', total_population)

    demographics_data = {
        'is_missing': is_missing,
        'sex_dist': sex_dist,
        'residence_dist': residence_dist,
        'religion_dist': religion_dist,
        'total_population': total_population_dist,
    }

    if geo.square_kms:
        demographics_data['population_density'] = {
            'name': "people per square kilometre",
            'values': {"this": total_population / geo.square_kms},
        }
    return demographics_data

def get_afrobarometer_profile(geo, session):
    with dataset_context(year='2016'):
        own_radio = LOCATIONNOTFOUND
        own_motor_vehicle = LOCATIONNOTFOUND
        own_television = LOCATIONNOTFOUND
        own_mobile_phone = LOCATIONNOTFOUND
        election_work_for_candidate_or_party = LOCATIONNOTFOUND
        election_attend_campaign_rally = LOCATIONNOTFOUND
        election_attend_campaign_meeting = LOCATIONNOTFOUND
        courts_make_binding_decisions = LOCATIONNOTFOUND
        vote_for_which_party = LOCATIONNOTFOUND
        level_of_corruption = LOCATIONNOTFOUND
        chinas_assistance_meets_country_needs = LOCATIONNOTFOUND
        employment_status = LOCATIONNOTFOUND
        main_reason_for_not_reporting_corruption = LOCATIONNOTFOUND
        education_of_respondent = LOCATIONNOTFOUND
        people_must_pay_taxes = LOCATIONNOTFOUND
        negative_image_of_china = LOCATIONNOTFOUND
        most_effective_way_to_combat_corruption = LOCATIONNOTFOUND
        people_can_fight_corruption = LOCATIONNOTFOUND
        people_must_obey_the_law = LOCATIONNOTFOUND
        chinas_influence_on_economy = LOCATIONNOTFOUND
        chinas_influence_positive_or_negative = LOCATIONNOTFOUND
        positive_image_of_china = LOCATIONNOTFOUND
        occupation_of_respondent = LOCATIONNOTFOUND
        employer_of_respondent = LOCATIONNOTFOUND
        how_often_use_a_mobile_phone = LOCATIONNOTFOUND
        how_often_use_the_internet = LOCATIONNOTFOUND
        freeness_and_fairness_last_elections = LOCATIONNOTFOUND
        extent_of_democracy = LOCATIONNOTFOUND
        elections_ensure_voters_views_are_reflected = LOCATIONNOTFOUND
        corruption_judges_and_magistrates = LOCATIONNOTFOUND
        elections_to_remove_leaders_from_office = LOCATIONNOTFOUND
        corruption_tax_officials = LOCATIONNOTFOUND
        corruption_police = LOCATIONNOTFOUND
        corruption_local_gov_councilors = LOCATIONNOTFOUND
        corruption_gov_officials = LOCATIONNOTFOUND
        corruption_mps = LOCATIONNOTFOUND
        corruption_president_office = LOCATIONNOTFOUND
        satisfaction_with_democracy = LOCATIONNOTFOUND
        corruption_business_executives = LOCATIONNOTFOUND
        corruption_religious_leaders = LOCATIONNOTFOUND
        corruption_traditional_leaders = LOCATIONNOTFOUND
        difficulty_to_obtain_public_school_services = LOCATIONNOTFOUND
        voting_recent_national_election = LOCATIONNOTFOUND
        difficulty_to_obtain_medical_treatment = LOCATIONNOTFOUND
        pay_bribe_for_school_services = LOCATIONNOTFOUND
        difficulty_to_obtain_identity_document = LOCATIONNOTFOUND
        pay_bribe_treatment_public_health = LOCATIONNOTFOUND
        difficulty_to_obtain_household_services = LOCATIONNOTFOUND
        pay_bribe_for_document_or_permit = LOCATIONNOTFOUND
        pay_bribe_for_household_services = LOCATIONNOTFOUND

        try:
            own_radio, _ = get_stat_data('own_radio', geo, session,
                                         table_fields=['own_radio'])
        except LocationNotFound:
            pass

        try:
            own_motor_vehicle, _ = get_stat_data('own_motor_vehicle', geo, session,
                                                 table_fields=['own_motor_vehicle'])
        except LocationNotFound:
            pass

        try:
            own_television, _ = get_stat_data('own_television', geo, session,
                                              table_fields=['own_television'])
        except LocationNotFound:
            pass

        try:
            own_mobile_phone, _ = get_stat_data('own_mobile_phone', geo, session,
                                                table_fields=['own_mobile_phone'])
        except LocationNotFound:
            pass

        try:
            election_work_for_candidate_or_party, _ = get_stat_data(
                'election_work_for_candidate_or_party', geo, session,
                table_fields=['election_work_for_candidate_or_party'])
        except LocationNotFound:
            pass

        try:
            election_attend_campaign_rally, _ = get_stat_data(
                'election_attend_campaign_rally', geo, session,
                table_fields=['election_attend_campaign_rally'])
        except LocationNotFound:
            pass

        try:
            election_attend_campaign_meeting, _ = get_stat_data(
                'election_attend_campaign_meeting', geo, session,
                table_fields=['election_attend_campaign_meeting'])
        except LocationNotFound:
            pass

        try:
            courts_make_binding_decisions, _ = get_stat_data(
                'courts_make_binding_decisions', geo, session,
                table_fields=['courts_make_binding_decisions'])
        except LocationNotFound:
            pass

        try:
            vote_for_which_party, _ = get_stat_data('vote_for_which_party', geo,
                                                    session, table_fields=[
                    'vote_for_which_party'])
        except LocationNotFound:
            pass

        try:
            level_of_corruption, _ = get_stat_data('level_of_corruption', geo,
                                                   session, table_fields=[
                    'level_of_corruption'])
        except LocationNotFound:
            pass

        try:
            chinas_assistance_meets_country_needs, _ = get_stat_data(
                'chinas_assistance_meets_country_needs', geo, session,
                table_fields=['chinas_assistance_meets_country_needs'])
        except LocationNotFound:
            pass

        try:
            employment_status, _ = get_stat_data('employment_status', geo, session,
                                                 table_fields=['employment_status'])
        except LocationNotFound:
            pass

        try:
            main_reason_for_not_reporting_corruption, _ = get_stat_data(
                'main_reason_for_not_reporting_corruption', geo, session,
                table_fields=['main_reason_for_not_reporting_corruption'])
        except LocationNotFound:
            pass

        try:
            education_of_respondent, _ = get_stat_data('education_of_respondent',
                                                       geo, session, table_fields=[
                    'education_of_respondent'])
        except LocationNotFound:
            pass

        try:
            people_must_pay_taxes, _ = get_stat_data('people_must_pay_taxes', geo,
                                                     session, table_fields=[
                    'people_must_pay_taxes'])
        except LocationNotFound:
            pass

        try:
            negative_image_of_china, _ = get_stat_data('negative_image_of_china',
                                                       geo, session, table_fields=[
                    'negative_image_of_china'])
        except LocationNotFound:
            pass

        try:
            most_effective_way_to_combat_corruption, _ = get_stat_data(
                'most_effective_way_to_combat_corruption', geo, session,
                table_fields=['most_effective_way_to_combat_corruption'])
        except LocationNotFound:
            pass

        try:
            people_can_fight_corruption, _ = get_stat_data(
                'people_can_fight_corruption', geo, session,
                table_fields=['people_can_fight_corruption'])
        except LocationNotFound:
            pass

        try:
            people_must_obey_the_law, _ = get_stat_data('people_must_obey_the_law',
                                                        geo, session, table_fields=[
                    'people_must_obey_the_law'])
        except LocationNotFound:
            pass

        try:
            chinas_influence_on_economy, _ = get_stat_data(
                'chinas_influence_on_economy', geo, session,
                table_fields=['chinas_influence_on_economy'])
        except LocationNotFound:
            pass

        try:
            chinas_influence_positive_or_negative, _ = get_stat_data(
                'chinas_influence_positive_or_negative', geo, session,
                table_fields=['chinas_influence_positive_or_negative'])
        except LocationNotFound:
            pass

        try:
            positive_image_of_china, _ = get_stat_data('positive_image_of_china',
                                                       geo, session, table_fields=[
                    'positive_image_of_china'])
        except LocationNotFound:
            pass

        try:
            occupation_of_respondent, _ = get_stat_data('occupation_of_respondent',
                                                        geo, session, table_fields=[
                    'occupation_of_respondent'])
        except LocationNotFound:
            pass

        try:
            employer_of_respondent, _ = get_stat_data('employer_of_respondent', geo,
                                                      session, table_fields=[
                    'employer_of_respondent'])
        except LocationNotFound:
            pass

        try:
            how_often_use_a_mobile_phone, _ = get_stat_data(
                'how_often_use_a_mobile_phone', geo, session,
                table_fields=['how_often_use_a_mobile_phone'])
        except LocationNotFound:
            pass

        try:
            how_often_use_the_internet, _ = get_stat_data(
                'how_often_use_the_internet', geo, session,
                table_fields=['how_often_use_the_internet'])
        except LocationNotFound:
            pass

        try:
            freeness_and_fairness_last_elections, _ = get_stat_data(
                'freeness_and_fairness_last_elections', geo, session,
                table_fields=['freeness_and_fairness_last_elections'])
        except LocationNotFound:
            pass

        try:
            extent_of_democracy, _ = get_stat_data('extent_of_democracy', geo,
                                                   session, table_fields=[
                    'extent_of_democracy'])
        except LocationNotFound:
            pass

        try:
            elections_ensure_voters_views_are_reflected, _ = get_stat_data(
                'elections_ensure_voters_views_are_reflected', geo, session,
                table_fields=['elections_ensure_voters_views_are_reflected'])
        except LocationNotFound:
            pass

        try:
            corruption_judges_and_magistrates, _ = get_stat_data(
                'corruption_judges_and_magistrates', geo, session,
                table_fields=['corruption_judges_and_magistrates'])
        except LocationNotFound:
            pass

        try:
            elections_to_remove_leaders_from_office, _ = get_stat_data(
                'elections_to_remove_leaders_from_office', geo,
                session, table_fields=[
                    'elections_to_remove_leaders_from_office'])
        except LocationNotFound:
            pass

        try:
            corruption_tax_officials, _ = get_stat_data('corruption_tax_officials',
                                                        geo, session, table_fields=[
                    'corruption_tax_officials'])
        except LocationNotFound:
            pass

        try:
            corruption_police, _ = get_stat_data('corruption_police', geo, session,
                                                 table_fields=['corruption_police'])
        except LocationNotFound:
            pass

        try:
            corruption_local_gov_councilors, _ = get_stat_data(
                'corruption_local_gov_councilors', geo, session,
                table_fields=['corruption_local_gov_councilors'])
        except LocationNotFound:
            pass

        try:
            corruption_gov_officials, _ = get_stat_data('corruption_gov_officials',
                                                        geo, session, table_fields=[
                    'corruption_gov_officials'])
        except LocationNotFound:
            pass

        try:
            corruption_mps, _ = get_stat_data('corruption_mps', geo, session,
                                              table_fields=['corruption_mps'])
        except LocationNotFound:
            pass

        try:
            corruption_president_office, _ = get_stat_data(
                'corruption_president_office', geo, session,
                table_fields=['corruption_president_office'])
        except LocationNotFound:
            pass

        try:
            satisfaction_with_democracy, _ = get_stat_data(
                'satisfaction_with_democracy', geo, session,
                table_fields=['satisfaction_with_democracy'])
        except LocationNotFound:
            pass

        try:
            corruption_business_executives, _ = get_stat_data(
                'corruption_business_executives', geo, session,
                table_fields=['corruption_business_executives'])
        except LocationNotFound:
            pass

        try:
            corruption_religious_leaders, _ = get_stat_data(
                'corruption_religious_leaders', geo, session,
                table_fields=['corruption_religious_leaders'])
        except LocationNotFound:
            pass

        try:
            corruption_traditional_leaders, _ = get_stat_data(
                'corruption_traditional_leaders', geo, session,
                table_fields=['corruption_traditional_leaders'])
        except LocationNotFound:
            pass

        try:
            difficulty_to_obtain_public_school_services, _ = get_stat_data(
                'difficulty_to_obtain_public_school_services', geo, session,
                table_fields=['difficulty_to_obtain_public_school_services'])
        except LocationNotFound:
            pass

        try:
            voting_recent_national_election, _ = get_stat_data(
                'voting_recent_national_election', geo, session,
                table_fields=['voting_recent_national_election'])
        except LocationNotFound:
            pass

        try:
            difficulty_to_obtain_medical_treatment, _ = get_stat_data(
                'difficulty_to_obtain_medical_treatment', geo, session,
                table_fields=['difficulty_to_obtain_medical_treatment'])
        except LocationNotFound:
            pass

        try:
            pay_bribe_for_school_services, _ = get_stat_data(
                'pay_bribe_for_school_services', geo, session,
                table_fields=['pay_bribe_for_school_services'])
        except LocationNotFound:
            pass

        try:
            difficulty_to_obtain_identity_document, _ = get_stat_data(
                'difficulty_to_obtain_identity_document', geo, session,
                table_fields=['difficulty_to_obtain_identity_document'])
        except LocationNotFound:
            pass

        try:
            pay_bribe_treatment_public_health, _ = get_stat_data(
                'pay_bribe_treatment_public_health', geo, session,
                table_fields=['pay_bribe_treatment_public_health'])
        except LocationNotFound:
            pass

        try:
            difficulty_to_obtain_household_services, _ = get_stat_data(
                'difficulty_to_obtain_household_services', geo, session,
                table_fields=['difficulty_to_obtain_household_services'])
        except LocationNotFound:
            pass

        try:
            pay_bribe_for_document_or_permit, _ = get_stat_data(
                'pay_bribe_for_document_or_permit', geo, session,
                table_fields=['pay_bribe_for_document_or_permit'])
        except LocationNotFound:
            pass

        try:
            pay_bribe_for_household_services, _ = get_stat_data(
                'pay_bribe_for_household_services', geo, session,
                table_fields=['pay_bribe_for_household_services'])
        except LocationNotFound:
            pass

        is_missing = own_radio.get('is_missing') and own_motor_vehicle.get(
            'is_missing') and own_television.get(
            'is_missing') and own_mobile_phone.get(
            'is_missing') and election_work_for_candidate_or_party.get(
            'is_missing') and election_attend_campaign_rally.get(
            'is_missing') and election_attend_campaign_meeting.get(
            'is_missing') and courts_make_binding_decisions.get(
            'is_missing') and vote_for_which_party.get(
            'is_missing') and level_of_corruption.get(
            'is_missing') and chinas_assistance_meets_country_needs.get(
            'is_missing') and employment_status.get(
            'is_missing') and main_reason_for_not_reporting_corruption.get(
            'is_missing') and education_of_respondent.get(
            'is_missing') and people_must_pay_taxes.get(
            'is_missing') and negative_image_of_china.get(
            'is_missing') and most_effective_way_to_combat_corruption.get(
            'is_missing') and people_can_fight_corruption.get(
            'is_missing') and people_must_obey_the_law.get(
            'is_missing') and chinas_influence_on_economy.get(
            'is_missing') and chinas_influence_positive_or_negative.get(
            'is_missing') and positive_image_of_china.get(
            'is_missing') and occupation_of_respondent.get(
            'is_missing') and employer_of_respondent.get(
            'is_missing') and how_often_use_a_mobile_phone.get(
            'is_missing') and how_often_use_the_internet.get(
            'is_missing') and freeness_and_fairness_last_elections.get(
            'is_missing') and extent_of_democracy.get(
            'is_missing') and elections_ensure_voters_views_are_reflected.get(
            'is_missing') and corruption_judges_and_magistrates.get(
            'is_missing') and elections_to_remove_leaders_from_office.get(
            'is_missing') and corruption_tax_officials.get(
            'is_missing') and corruption_police.get(
            'is_missing') and corruption_local_gov_councilors.get(
            'is_missing') and corruption_gov_officials.get(
            'is_missing') and corruption_mps.get(
            'is_missing') and corruption_president_office.get(
            'is_missing') and satisfaction_with_democracy.get(
            'is_missing') and corruption_business_executives.get(
            'is_missing') and corruption_religious_leaders.get(
            'is_missing') and corruption_traditional_leaders.get(
            'is_missing') and difficulty_to_obtain_public_school_services.get(
            'is_missing') and voting_recent_national_election.get(
            'is_missing') and difficulty_to_obtain_medical_treatment.get(
            'is_missing') and pay_bribe_for_school_services.get(
            'is_missing') and difficulty_to_obtain_identity_document.get(
            'is_missing') and pay_bribe_treatment_public_health.get(
            'is_missing') and difficulty_to_obtain_household_services.get(
            'is_missing') and pay_bribe_for_document_or_permit.get(
            'is_missing') and pay_bribe_for_household_services.get('is_missing')

    if not is_missing:
        difficulty_to_obtain_household_services = sort_keys(difficulty_key_order, difficulty_to_obtain_household_services)
        difficulty_to_obtain_identity_document = sort_keys(difficulty_key_order, difficulty_to_obtain_identity_document)
        difficulty_to_obtain_medical_treatment = sort_keys(difficulty_key_order, difficulty_to_obtain_medical_treatment)
        difficulty_to_obtain_public_school_services = sort_keys(difficulty_key_order, difficulty_to_obtain_public_school_services)
        election_attend_campaign_meeting = sort_keys(elections_key_order, election_attend_campaign_meeting)
        election_attend_campaign_rally = sort_keys(elections_key_order, election_attend_campaign_rally)
        election_work_for_candidate_or_party = sort_keys(elections_key_order, election_work_for_candidate_or_party)
        elections_to_remove_leaders_from_office = sort_keys(elections_key_order, elections_to_remove_leaders_from_office)
        freeness_and_fairness_last_elections = sort_keys(free_and_fair_key_order, freeness_and_fairness_last_elections)
        chinas_influence_positive_or_negative = sort_keys(chinas_influence_key_order, chinas_influence_positive_or_negative)
        chinas_influence_on_economy = sort_keys(china_influence_on_economy_key_order, chinas_influence_on_economy)
        pay_bribe_for_document_or_permit = sort_keys(pay_bribes_key_order, pay_bribe_for_document_or_permit)
        pay_bribe_for_household_services = sort_keys(pay_bribes_key_order, pay_bribe_for_household_services)
        pay_bribe_for_school_services = sort_keys(pay_bribes_key_order, pay_bribe_for_school_services)
        pay_bribe_treatment_public_health = sort_keys(pay_bribes_key_order, pay_bribe_treatment_public_health)
        how_often_use_a_mobile_phone = sort_keys(mobile_phone_usage_key_order, how_often_use_a_mobile_phone)
        how_often_use_the_internet = sort_keys(internet_usage_key_order, how_often_use_the_internet)
        education_of_respondent = sort_keys(education_of_respondent_key_order, education_of_respondent)
        employment_status = sort_keys(employment_status_key_order, employment_status)
        people_can_fight_corruption = sort_keys(can_people_fight_corruption_key_order, people_can_fight_corruption)
        courts_make_binding_decisions = sort_keys(courts_make_binding_decisions_key_order, courts_make_binding_decisions)
        people_must_pay_taxes = sort_keys(pay_taxes_key_order, people_must_pay_taxes)
        people_must_obey_the_law = sort_keys(people_must_obey_the_law_key_order, people_must_obey_the_law)

    final_data = {
        'is_missing': is_missing,
        'own_radio': own_radio,
        'own_motor_vehicle': own_motor_vehicle,
        'own_television': own_television,
        'own_mobile_phone': own_mobile_phone,
        'election_work_for_candidate_or_party': election_work_for_candidate_or_party,
        'election_attend_campaign_rally': election_attend_campaign_rally,
        'election_attend_campaign_meeting': election_attend_campaign_meeting,
        'courts_make_binding_decisions': courts_make_binding_decisions,
        'vote_for_which_party': vote_for_which_party,
        'level_of_corruption': level_of_corruption,
        'chinas_assistance_meets_country_needs': chinas_assistance_meets_country_needs,
        'employment_status': employment_status,
        'main_reason_for_not_reporting_corruption': main_reason_for_not_reporting_corruption,
        'education_of_respondent': education_of_respondent,
        'people_must_pay_taxes': people_must_pay_taxes,
        'negative_image_of_china': negative_image_of_china,
        'most_effective_way_to_combat_corruption': most_effective_way_to_combat_corruption,
        'people_can_fight_corruption': people_can_fight_corruption,
        'people_must_obey_the_law': people_must_obey_the_law,
        'chinas_influence_on_economy': chinas_influence_on_economy,
        'chinas_influence_positive_or_negative': chinas_influence_positive_or_negative,
        'positive_image_of_china': positive_image_of_china,
        'occupation_of_respondent': occupation_of_respondent,
        'employer_of_respondent': employer_of_respondent,
        'how_often_use_a_mobile_phone': how_often_use_a_mobile_phone,
        'how_often_use_the_internet': how_often_use_the_internet,
        'freeness_and_fairness_last_elections': freeness_and_fairness_last_elections,
        'extent_of_democracy': extent_of_democracy,
        'elections_ensure_voters_views_are_reflected': elections_ensure_voters_views_are_reflected,
        'corruption_judges_and_magistrates': corruption_judges_and_magistrates,
        'elections_to_remove_leaders_from_office': elections_to_remove_leaders_from_office,
        'corruption_tax_officials': corruption_tax_officials,
        'corruption_police': corruption_police,
        'corruption_local_gov_councilors': corruption_local_gov_councilors,
        'corruption_gov_officials': corruption_gov_officials,
        'corruption_mps': corruption_mps,
        'corruption_president_office': corruption_president_office,
        'satisfaction_with_democracy': satisfaction_with_democracy,
        'corruption_business_executives': corruption_business_executives,
        'corruption_religious_leaders': corruption_religious_leaders,
        'corruption_traditional_leaders': corruption_traditional_leaders,
        'difficulty_to_obtain_public_school_services': difficulty_to_obtain_public_school_services,
        'voting_recent_national_election': voting_recent_national_election,
        'difficulty_to_obtain_medical_treatment': difficulty_to_obtain_medical_treatment,
        'pay_bribe_for_school_services': pay_bribe_for_school_services,
        'difficulty_to_obtain_identity_document': difficulty_to_obtain_identity_document,
        'pay_bribe_treatment_public_health': pay_bribe_treatment_public_health,
        'difficulty_to_obtain_household_services': difficulty_to_obtain_household_services,
        'pay_bribe_for_document_or_permit': pay_bribe_for_document_or_permit,
        'pay_bribe_for_household_services': pay_bribe_for_household_services,

    }
    return final_data