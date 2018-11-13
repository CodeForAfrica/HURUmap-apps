import logging

from django.conf import settings
from wazimap.data.utils import (LocationNotFound, get_session, get_stat_data,
                                merge_dicts)

__author__ = 'kenneth'

log = logging.getLogger(__name__)

SECTIONS = settings.HURUMAP.get('topics', {})

LOCATIONNOTFOUND = {'name': 'No Data Found', 'numerators': {'this': 0},
                    'values': {'this': 0}}


def get_afrobarometer(geo, session):
    performance_president, _ = LOCATIONNOTFOUND, 0
    countrys_present_economic_condition, _ = LOCATIONNOTFOUND, 0
    african_union_helps_country, _ = LOCATIONNOTFOUND, 0
    regional_organisation_helps_country, _ = LOCATIONNOTFOUND, 0
    freedom_to_say_what_you_think, _ = LOCATIONNOTFOUND, 0
    freedom_to_choose_who_to_vote_for, _ = LOCATIONNOTFOUND, 0
    freedom_to_join_any_political_organizations, _ = LOCATIONNOTFOUND, 0
    trust_tax_department, _ = LOCATIONNOTFOUND, 0
    leaders_serve_interests_of_people_or_their_own, _ = LOCATIONNOTFOUND, 0
    trust_the_ruling_party, _ = LOCATIONNOTFOUND, 0
    trust_opposition_political_parties, _ = LOCATIONNOTFOUND, 0
    trust_president, _ = LOCATIONNOTFOUND, 0
    trust_parliamentnational_assembly, _ = LOCATIONNOTFOUND, 0
    trust_national_electoral_commission, _ = LOCATIONNOTFOUND, 0
    trust_religious_leaders, _ = LOCATIONNOTFOUND, 0
    pay_more_taxes_to_increase_health_spending, _ = LOCATIONNOTFOUND, 0
    trust_police, _ = LOCATIONNOTFOUND, 0
    trust_army, _ = LOCATIONNOTFOUND, 0
    trust_courts_of_law, _ = LOCATIONNOTFOUND, 0
    trust_traditional_leaders, _ = LOCATIONNOTFOUND, 0
    most_effective_way_to_combat_corruption, _ = LOCATIONNOTFOUND, 0
    people_can_fight_corruption, _ = LOCATIONNOTFOUND, 0
    difficulty_of_crossing_borders, _ = LOCATIONNOTFOUND, 0
    how_effective_the_news_media_reveals_government_mistakes_and_corruption, _ = LOCATIONNOTFOUND, 0
    handling_providing_reliable_electric_supply, _ = LOCATIONNOTFOUND, 0
    handling_maintaining_roads_and_bridges, _ = LOCATIONNOTFOUND, 0
    handling_fighting_corruption, _ = LOCATIONNOTFOUND, 0
    handling_ensuring_enough_to_eat, _ = LOCATIONNOTFOUND, 0
    extent_of_democracy, _ = LOCATIONNOTFOUND, 0
    handling_addressing_educational_needs, _ = LOCATIONNOTFOUND, 0
    handling_reducing_crime, _ = LOCATIONNOTFOUND, 0
    handling_narrowing_income_gaps, _ = LOCATIONNOTFOUND, 0
    handling_keeping_prices_down, _ = LOCATIONNOTFOUND, 0
    handling_creating_jobs, _ = LOCATIONNOTFOUND, 0
    handling_improving_living_standards_of_the_poor, _ = LOCATIONNOTFOUND, 0
    handling_managing_the_economy, _ = LOCATIONNOTFOUND, 0
    difficulty_to_find_out_what_taxes_or_fees_to_pay, _ = LOCATIONNOTFOUND, 0
    difficulty_to_avoid_paying_taxes, _ = LOCATIONNOTFOUND, 0
    country_with_most_influence, _ = LOCATIONNOTFOUND, 0
    model_country_for_development, _ = LOCATIONNOTFOUND, 0
    last_national_election_work_for_a_candidate_or_party, _ = LOCATIONNOTFOUND, 0
    last_national_election_attend_a_campaign_rally, _ = LOCATIONNOTFOUND, 0
    last_national_election_attend_a_campaign_meeting, _ = LOCATIONNOTFOUND, 0
    last_national_election_persuade_others_to_vote_for_a_certain_candidate_or_party, _ = LOCATIONNOTFOUND, 0
    courts_make_binding_decisions, _ = LOCATIONNOTFOUND, 0
    people_must_pay_taxes, _ = LOCATIONNOTFOUND, 0
    people_must_obey_the_law, _ = LOCATIONNOTFOUND, 0
    religion_of_respondent, _ = LOCATIONNOTFOUND, 0
    problems_with_courts_too_expensive, _ = LOCATIONNOTFOUND, 0
    problems_with_courts_no_advice, _ = LOCATIONNOTFOUND, 0
    problems_with_courts_too_complex, _ = LOCATIONNOTFOUND, 0
    problems_with_courts_long_delays, _ = LOCATIONNOTFOUND, 0
    problems_with_courts_judge_did_not_listen, _ = LOCATIONNOTFOUND, 0
    how_often_use_a_mobile_phone, _ = LOCATIONNOTFOUND, 0
    how_often_use_the_internet, _ = LOCATIONNOTFOUND, 0
    trust_your_elected_local_government_council, _ = LOCATIONNOTFOUND, 0
    have_been_physically_attacked, _ = LOCATIONNOTFOUND, 0
    vote_for_which_party, _ = LOCATIONNOTFOUND, 0
    how_often_gone_without_water, _ = LOCATIONNOTFOUND, 0
    contact_local_government_councilor, _ = LOCATIONNOTFOUND, 0
    corruption_tax_officials, _ = LOCATIONNOTFOUND, 0
    contact_official_of_a_government_agency, _ = LOCATIONNOTFOUND, 0
    contact_mp, _ = LOCATIONNOTFOUND, 0
    contact_traditional_leader, _ = LOCATIONNOTFOUND, 0
    contact_political_party_official, _ = LOCATIONNOTFOUND, 0
    corruption_office_of_the_presidency, _ = LOCATIONNOTFOUND, 0
    contact_religious_leader, _ = LOCATIONNOTFOUND, 0
    how_often_gone_without_cash_income, _ = LOCATIONNOTFOUND, 0
    corruption_business_executives, _ = LOCATIONNOTFOUND, 0
    corruption_religious_leaders, _ = LOCATIONNOTFOUND, 0
    corruption_traditional_leaders, _ = LOCATIONNOTFOUND, 0
    voting_in_the_most_recent_national_election, _ = LOCATIONNOTFOUND, 0
    freeness_and_fairness_of_the_last_national_election, _ = LOCATIONNOTFOUND, 0
    own_radio, _ = LOCATIONNOTFOUND, 0
    own_motor_vehicle, _ = LOCATIONNOTFOUND, 0
    own_television, _ = LOCATIONNOTFOUND, 0
    own_mobile_phone, _ = LOCATIONNOTFOUND, 0
    type_of_shelter_of_respondent, _ = LOCATIONNOTFOUND, 0
    roof_of_respondents_home, _ = LOCATIONNOTFOUND, 0
    level_of_corruption, _ = LOCATIONNOTFOUND, 0
    had_something_stolen_from_house, _ = LOCATIONNOTFOUND, 0
    how_often_gone_without_medical_care, _ = LOCATIONNOTFOUND, 0
    how_often_gone_without_food, _ = LOCATIONNOTFOUND, 0
    who_responsible_local_councilors_do_jobs, _ = LOCATIONNOTFOUND, 0
    who_responsible_president_does_job, _ = LOCATIONNOTFOUND, 0
    how_often_gone_without_cooking_fuel, _ = LOCATIONNOTFOUND, 0
    who_responsible_mps_do_jobs, _ = LOCATIONNOTFOUND, 0
    employment_status, _ = LOCATIONNOTFOUND, 0
    education_of_respondent, _ = LOCATIONNOTFOUND, 0
    discuss_politics, _ = LOCATIONNOTFOUND, 0
    interest_in_public_affairs, _ = LOCATIONNOTFOUND, 0
    occupation_of_respondent, _ = LOCATIONNOTFOUND, 0
    employer_of_respondent, _ = LOCATIONNOTFOUND, 0
    corruption_judges_and_magistrates, _ = LOCATIONNOTFOUND, 0
    corruption_police, _ = LOCATIONNOTFOUND, 0
    corruption_local_government_councilors, _ = LOCATIONNOTFOUND, 0
    corruption_government_officials, _ = LOCATIONNOTFOUND, 0
    satisfaction_with_democracy, _ = LOCATIONNOTFOUND, 0
    corruption_members_of_parliament, _ = LOCATIONNOTFOUND, 0
    how_often_opposition_parties_silenced_by_government, _ = LOCATIONNOTFOUND, 0
    how_often_president_ignores_parliament, _ = LOCATIONNOTFOUND, 0
    how_often_news_media_abuses_its_freedom, _ = LOCATIONNOTFOUND, 0
    how_often_party_competition_leads_to_conflict, _ = LOCATIONNOTFOUND, 0
    how_often_president_ignores_laws, _ = LOCATIONNOTFOUND, 0
    age, _ = LOCATIONNOTFOUND, 0
    overall_direction_of_the_country, _ = LOCATIONNOTFOUND, 0
    language_of_respondent, _ = LOCATIONNOTFOUND, 0
    your_living_conditions_vs, _ = LOCATIONNOTFOUND, 0
    countrys_economic_condition_in_12_months_time, _ = LOCATIONNOTFOUND, 0
    countrys_economic_condition_compared_to_12_months_ago, _ = LOCATIONNOTFOUND, 0
    how_often_received_remittances, _ = LOCATIONNOTFOUND, 0
    handling_providing_water_and_sanitation_services, _ = LOCATIONNOTFOUND, 0
    negative_image_of_china, _ = LOCATIONNOTFOUND, 0
    chinas_influence_on_economy, _ = LOCATIONNOTFOUND, 0
    chinas_influence_positive_or_negative, _ = LOCATIONNOTFOUND, 0
    positive_image_of_china, _ = LOCATIONNOTFOUND, 0
    how_often_felt_unsafe_walking_in_neighbourhood, _ = LOCATIONNOTFOUND, 0
    contact_with_government_court_or_tribunal, _ = LOCATIONNOTFOUND, 0
    elections_enable_voters_to_remove_leaders_from_office, _ = LOCATIONNOTFOUND, 0
    performance_mpnational_assembly_rep, _ = LOCATIONNOTFOUND, 0
    performance_traditional_leader, _ = LOCATIONNOTFOUND, 0
    political_opposition_is_viable_alternative, _ = LOCATIONNOTFOUND, 0
    elections_ensure_voters_views_are_reflected, _ = LOCATIONNOTFOUND, 0

    try:
        performance_president, _ = get_stat_data('performance_president', geo,
                                                 session, table_fields=[
                'performance_president'])
    except LocationNotFound:
        pass

    try:
        countrys_present_economic_condition, _ = get_stat_data(
            'countrys_present_economic_condition', geo, session,
            table_fields=['countrys_present_economic_condition'])
    except LocationNotFound:
        pass

    try:
        african_union_helps_country, _ = get_stat_data(
            'african_union_helps_country', geo, session,
            table_fields=['african_union_helps_country'])
    except LocationNotFound:
        pass

    try:
        regional_organisation_helps_country, _ = get_stat_data(
            'regional_organisation_helps_country', geo, session,
            table_fields=['regional_organisation_helps_country'])
    except LocationNotFound:
        pass

    try:
        freedom_to_say_what_you_think, _ = get_stat_data(
            'freedom_to_say_what_you_think', geo, session,
            table_fields=['freedom_to_say_what_you_think'])
    except LocationNotFound:
        pass

    try:
        freedom_to_choose_who_to_vote_for, _ = get_stat_data(
            'freedom_to_choose_who_to_vote_for', geo, session,
            table_fields=['freedom_to_choose_who_to_vote_for'])
    except LocationNotFound:
        pass

    try:
        freedom_to_join_any_political_organizations, _ = get_stat_data(
            'freedom_to_join_any_political_organizations', geo, session,
            table_fields=['freedom_to_join_any_political_organizations'])
    except LocationNotFound:
        pass

    try:
        trust_tax_department, _ = get_stat_data('trust_tax_department', geo,
                                                session, table_fields=[
                'trust_tax_department'])
    except LocationNotFound:
        pass

    try:
        leaders_serve_interests_of_people_or_their_own, _ = get_stat_data(
            'leaders_serve_interests_of_people_or_their_own', geo, session,
            table_fields=['leaders_serve_interests_of_people_or_their_own'])
    except LocationNotFound:
        pass

    try:
        trust_the_ruling_party, _ = get_stat_data('trust_the_ruling_party', geo,
                                                  session, table_fields=[
                'trust_the_ruling_party'])
    except LocationNotFound:
        pass

    try:
        trust_opposition_political_parties, _ = get_stat_data(
            'trust_opposition_political_parties', geo, session,
            table_fields=['trust_opposition_political_parties'])
    except LocationNotFound:
        pass

    try:
        trust_president, _ = get_stat_data('trust_president', geo, session,
                                           table_fields=['trust_president'])
    except LocationNotFound:
        pass

    try:
        trust_parliamentnational_assembly, _ = get_stat_data(
            'trust_parliamentnational_assembly', geo, session,
            table_fields=['trust_parliamentnational_assembly'])
    except LocationNotFound:
        pass

    try:
        trust_national_electoral_commission, _ = get_stat_data(
            'trust_national_electoral_commission', geo, session,
            table_fields=['trust_national_electoral_commission'])
    except LocationNotFound:
        pass

    try:
        trust_religious_leaders, _ = get_stat_data('trust_religious_leaders',
                                                   geo, session, table_fields=[
                'trust_religious_leaders'])
    except LocationNotFound:
        pass

    try:
        pay_more_taxes_to_increase_health_spending, _ = get_stat_data(
            'pay_more_taxes_to_increase_health_spending', geo, session,
            table_fields=['pay_more_taxes_to_increase_health_spending'])
    except LocationNotFound:
        pass

    try:
        trust_police, _ = get_stat_data('trust_police', geo, session,
                                        table_fields=['trust_police'])
    except LocationNotFound:
        pass

    try:
        trust_army, _ = get_stat_data('trust_army', geo, session,
                                      table_fields=['trust_army'])
    except LocationNotFound:
        pass

    try:
        trust_courts_of_law, _ = get_stat_data('trust_courts_of_law', geo,
                                               session, table_fields=[
                'trust_courts_of_law'])
    except LocationNotFound:
        pass

    try:
        trust_traditional_leaders, _ = get_stat_data(
            'trust_traditional_leaders', geo, session,
            table_fields=['trust_traditional_leaders'])
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
        difficulty_of_crossing_borders, _ = get_stat_data(
            'difficulty_of_crossing_borders', geo, session,
            table_fields=['difficulty_of_crossing_borders'])
    except LocationNotFound:
        pass

    try:
        how_effective_the_news_media_reveals_government_mistakes_and_corruption, _ = get_stat_data(
            'how_effective_the_news_media_reveals_government_mistakes_and_corruption',
            geo, session, table_fields=[
                'how_effective_the_news_media_reveals_government_mistakes_and_corruption'])
    except LocationNotFound:
        pass

    try:
        handling_providing_reliable_electric_supply, _ = get_stat_data(
            'handling_providing_reliable_electric_supply', geo, session,
            table_fields=['handling_providing_reliable_electric_supply'])
    except LocationNotFound:
        pass

    try:
        handling_maintaining_roads_and_bridges, _ = get_stat_data(
            'handling_maintaining_roads_and_bridges', geo, session,
            table_fields=['handling_maintaining_roads_and_bridges'])
    except LocationNotFound:
        pass

    try:
        handling_fighting_corruption, _ = get_stat_data(
            'handling_fighting_corruption', geo, session,
            table_fields=['handling_fighting_corruption'])
    except LocationNotFound:
        pass

    try:
        handling_ensuring_enough_to_eat, _ = get_stat_data(
            'handling_ensuring_enough_to_eat', geo, session,
            table_fields=['handling_ensuring_enough_to_eat'])
    except LocationNotFound:
        pass

    try:
        extent_of_democracy, _ = get_stat_data('extent_of_democracy', geo,
                                               session, table_fields=[
                'extent_of_democracy'])
    except LocationNotFound:
        pass

    try:
        handling_addressing_educational_needs, _ = get_stat_data(
            'handling_addressing_educational_needs', geo, session,
            table_fields=['handling_addressing_educational_needs'])
    except LocationNotFound:
        pass

    try:
        handling_reducing_crime, _ = get_stat_data('handling_reducing_crime',
                                                   geo, session, table_fields=[
                'handling_reducing_crime'])
    except LocationNotFound:
        pass

    try:
        handling_narrowing_income_gaps, _ = get_stat_data(
            'handling_narrowing_income_gaps', geo, session,
            table_fields=['handling_narrowing_income_gaps'])
    except LocationNotFound:
        pass

    try:
        handling_keeping_prices_down, _ = get_stat_data(
            'handling_keeping_prices_down', geo, session,
            table_fields=['handling_keeping_prices_down'])
    except LocationNotFound:
        pass

    try:
        handling_creating_jobs, _ = get_stat_data('handling_creating_jobs', geo,
                                                  session, table_fields=[
                'handling_creating_jobs'])
    except LocationNotFound:
        pass

    try:
        handling_improving_living_standards_of_the_poor, _ = get_stat_data(
            'handling_improving_living_standards_of_the_poor', geo, session,
            table_fields=['handling_improving_living_standards_of_the_poor'])
    except LocationNotFound:
        pass

    try:
        handling_managing_the_economy, _ = get_stat_data(
            'handling_managing_the_economy', geo, session,
            table_fields=['handling_managing_the_economy'])
    except LocationNotFound:
        pass

    try:
        difficulty_to_find_out_what_taxes_or_fees_to_pay, _ = get_stat_data(
            'difficulty_to_find_out_what_taxes_or_fees_to_pay', geo, session,
            table_fields=['difficulty_to_find_out_what_taxes_or_fees_to_pay'])
    except LocationNotFound:
        pass

    try:
        difficulty_to_avoid_paying_taxes, _ = get_stat_data(
            'difficulty_to_avoid_paying_taxes', geo, session,
            table_fields=['difficulty_to_avoid_paying_taxes'])
    except LocationNotFound:
        pass

    try:
        country_with_most_influence, _ = get_stat_data(
            'country_with_most_influence', geo, session,
            table_fields=['country_with_most_influence'])
    except LocationNotFound:
        pass

    try:
        model_country_for_development, _ = get_stat_data(
            'model_country_for_development', geo, session,
            table_fields=['model_country_for_development'])
    except LocationNotFound:
        pass

    try:
        last_national_election_work_for_a_candidate_or_party, _ = get_stat_data(
            'last_national_election_work_for_a_candidate_or_party', geo,
            session, table_fields=[
                'last_national_election_work_for_a_candidate_or_party'])
    except LocationNotFound:
        pass

    try:
        last_national_election_attend_a_campaign_rally, _ = get_stat_data(
            'last_national_election_attend_a_campaign_rally', geo, session,
            table_fields=['last_national_election_attend_a_campaign_rally'])
    except LocationNotFound:
        pass

    try:
        last_national_election_attend_a_campaign_meeting, _ = get_stat_data(
            'last_national_election_attend_a_campaign_meeting', geo, session,
            table_fields=['last_national_election_attend_a_campaign_meeting'])
    except LocationNotFound:
        pass

    try:
        last_national_election_persuade_others_to_vote_for_a_certain_candidate_or_party, _ = get_stat_data(
            'last_national_election_persuade_others_to_vote_for_a_certain_candidate_or_party',
            geo, session, table_fields=[
                'last_national_election_persuade_others_to_vote_for_a_certain_candidate_or_party'])
    except LocationNotFound:
        pass

    try:
        courts_make_binding_decisions, _ = get_stat_data(
            'courts_make_binding_decisions', geo, session,
            table_fields=['courts_make_binding_decisions'])
    except LocationNotFound:
        pass

    try:
        people_must_pay_taxes, _ = get_stat_data('people_must_pay_taxes', geo,
                                                 session, table_fields=[
                'people_must_pay_taxes'])
    except LocationNotFound:
        pass

    try:
        people_must_obey_the_law, _ = get_stat_data('people_must_obey_the_law',
                                                    geo, session, table_fields=[
                'people_must_obey_the_law'])
    except LocationNotFound:
        pass

    try:
        religion_of_respondent, _ = get_stat_data('religion_of_respondent', geo,
                                                  session, table_fields=[
                'religion_of_respondent'])
    except LocationNotFound:
        pass

    try:
        problems_with_courts_too_expensive, _ = get_stat_data(
            'problems_with_courts_too_expensive', geo, session,
            table_fields=['problems_with_courts_too_expensive'])
    except LocationNotFound:
        pass

    try:
        problems_with_courts_no_advice, _ = get_stat_data(
            'problems_with_courts_no_advice', geo, session,
            table_fields=['problems_with_courts_no_advice'])
    except LocationNotFound:
        pass

    try:
        problems_with_courts_too_complex, _ = get_stat_data(
            'problems_with_courts_too_complex', geo, session,
            table_fields=['problems_with_courts_too_complex'])
    except LocationNotFound:
        pass

    try:
        problems_with_courts_long_delays, _ = get_stat_data(
            'problems_with_courts_long_delays', geo, session,
            table_fields=['problems_with_courts_long_delays'])
    except LocationNotFound:
        pass

    try:
        problems_with_courts_judge_did_not_listen, _ = get_stat_data(
            'problems_with_courts_judge_did_not_listen', geo, session,
            table_fields=['problems_with_courts_judge_did_not_listen'])
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
        trust_your_elected_local_government_council, _ = get_stat_data(
            'trust_your_elected_local_government_council', geo, session,
            table_fields=['trust_your_elected_local_government_council'])
    except LocationNotFound:
        pass

    try:
        have_been_physically_attacked, _ = get_stat_data(
            'have_been_physically_attacked', geo, session,
            table_fields=['have_been_physically_attacked'])
    except LocationNotFound:
        pass

    try:
        vote_for_which_party, _ = get_stat_data('vote_for_which_party', geo,
                                                session, table_fields=[
                'vote_for_which_party'])
    except LocationNotFound:
        pass

    try:
        how_often_gone_without_water, _ = get_stat_data(
            'how_often_gone_without_water', geo, session,
            table_fields=['how_often_gone_without_water'])
    except LocationNotFound:
        pass

    try:
        contact_local_government_councilor, _ = get_stat_data(
            'contact_local_government_councilor', geo, session,
            table_fields=['contact_local_government_councilor'])
    except LocationNotFound:
        pass

    try:
        corruption_tax_officials, _ = get_stat_data('corruption_tax_officials',
                                                    geo, session, table_fields=[
                'corruption_tax_officials'])
    except LocationNotFound:
        pass

    try:
        contact_official_of_a_government_agency, _ = get_stat_data(
            'contact_official_of_a_government_agency', geo, session,
            table_fields=['contact_official_of_a_government_agency'])
    except LocationNotFound:
        pass

    try:
        contact_mp, _ = get_stat_data('contact_mp', geo, session,
                                      table_fields=['contact_mp'])
    except LocationNotFound:
        pass

    try:
        contact_traditional_leader, _ = get_stat_data(
            'contact_traditional_leader', geo, session,
            table_fields=['contact_traditional_leader'])
    except LocationNotFound:
        pass

    try:
        contact_political_party_official, _ = get_stat_data(
            'contact_political_party_official', geo, session,
            table_fields=['contact_political_party_official'])
    except LocationNotFound:
        pass

    try:
        corruption_office_of_the_presidency, _ = get_stat_data(
            'corruption_office_of_the_presidency', geo, session,
            table_fields=['corruption_office_of_the_presidency'])
    except LocationNotFound:
        pass

    try:
        contact_religious_leader, _ = get_stat_data('contact_religious_leader',
                                                    geo, session, table_fields=[
                'contact_religious_leader'])
    except LocationNotFound:
        pass

    try:
        how_often_gone_without_cash_income, _ = get_stat_data(
            'how_often_gone_without_cash_income', geo, session,
            table_fields=['how_often_gone_without_cash_income'])
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
        voting_in_the_most_recent_national_election, _ = get_stat_data(
            'voting_in_the_most_recent_national_election', geo, session,
            table_fields=['voting_in_the_most_recent_national_election'])
    except LocationNotFound:
        pass

    try:
        freeness_and_fairness_of_the_last_national_election, _ = get_stat_data(
            'freeness_and_fairness_of_the_last_national_election', geo, session,
            table_fields=[
                'freeness_and_fairness_of_the_last_national_election'])
    except LocationNotFound:
        pass

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
        type_of_shelter_of_respondent, _ = get_stat_data(
            'type_of_shelter_of_respondent', geo, session,
            table_fields=['type_of_shelter_of_respondent'])
    except LocationNotFound:
        pass

    try:
        roof_of_respondents_home, _ = get_stat_data('roof_of_respondents_home',
                                                    geo, session, table_fields=[
                'roof_of_respondents_home'])
    except LocationNotFound:
        pass

    try:
        level_of_corruption, _ = get_stat_data('level_of_corruption', geo,
                                               session, table_fields=[
                'level_of_corruption'])
    except LocationNotFound:
        pass

    try:
        had_something_stolen_from_house, _ = get_stat_data(
            'had_something_stolen_from_house', geo, session,
            table_fields=['had_something_stolen_from_house'])
    except LocationNotFound:
        pass

    try:
        how_often_gone_without_medical_care, _ = get_stat_data(
            'how_often_gone_without_medical_care', geo, session,
            table_fields=['how_often_gone_without_medical_care'])
    except LocationNotFound:
        pass

    try:
        how_often_gone_without_food, _ = get_stat_data(
            'how_often_gone_without_food', geo, session,
            table_fields=['how_often_gone_without_food'])
    except LocationNotFound:
        pass

    try:
        who_responsible_local_councilors_do_jobs, _ = get_stat_data(
            'who_responsible_local_councilors_do_jobs', geo, session,
            table_fields=['who_responsible_local_councilors_do_jobs'])
    except LocationNotFound:
        pass

    try:
        who_responsible_president_does_job, _ = get_stat_data(
            'who_responsible_president_does_job', geo, session,
            table_fields=['who_responsible_president_does_job'])
    except LocationNotFound:
        pass

    try:
        how_often_gone_without_cooking_fuel, _ = get_stat_data(
            'how_often_gone_without_cooking_fuel', geo, session,
            table_fields=['how_often_gone_without_cooking_fuel'])
    except LocationNotFound:
        pass

    try:
        who_responsible_mps_do_jobs, _ = get_stat_data(
            'who_responsible_mps_do_jobs', geo, session,
            table_fields=['who_responsible_mps_do_jobs'])
    except LocationNotFound:
        pass

    try:
        employment_status, _ = get_stat_data('employment_status', geo, session,
                                             table_fields=['employment_status'])
    except LocationNotFound:
        pass

    try:
        education_of_respondent, _ = get_stat_data('education_of_respondent',
                                                   geo, session, table_fields=[
                'education_of_respondent'])
    except LocationNotFound:
        pass

    try:
        discuss_politics, _ = get_stat_data('discuss_politics', geo, session,
                                            table_fields=['discuss_politics'])
    except LocationNotFound:
        pass

    try:
        interest_in_public_affairs, _ = get_stat_data(
            'interest_in_public_affairs', geo, session,
            table_fields=['interest_in_public_affairs'])
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
        corruption_judges_and_magistrates, _ = get_stat_data(
            'corruption_judges_and_magistrates', geo, session,
            table_fields=['corruption_judges_and_magistrates'])
    except LocationNotFound:
        pass

    try:
        corruption_police, _ = get_stat_data('corruption_police', geo, session,
                                             table_fields=['corruption_police'])
    except LocationNotFound:
        pass

    try:
        corruption_local_government_councilors, _ = get_stat_data(
            'corruption_local_government_councilors', geo, session,
            table_fields=['corruption_local_government_councilors'])
    except LocationNotFound:
        pass

    try:
        corruption_government_officials, _ = get_stat_data(
            'corruption_government_officials', geo, session,
            table_fields=['corruption_government_officials'])
    except LocationNotFound:
        pass

    try:
        satisfaction_with_democracy, _ = get_stat_data(
            'satisfaction_with_democracy', geo, session,
            table_fields=['satisfaction_with_democracy'])
    except LocationNotFound:
        pass

    try:
        corruption_members_of_parliament, _ = get_stat_data(
            'corruption_members_of_parliament', geo, session,
            table_fields=['corruption_members_of_parliament'])
    except LocationNotFound:
        pass

    try:
        how_often_opposition_parties_silenced_by_government, _ = get_stat_data(
            'how_often_opposition_parties_silenced_by_government', geo, session,
            table_fields=[
                'how_often_opposition_parties_silenced_by_government'])
    except LocationNotFound:
        pass

    try:
        how_often_president_ignores_parliament, _ = get_stat_data(
            'how_often_president_ignores_parliament', geo, session,
            table_fields=['how_often_president_ignores_parliament'])
    except LocationNotFound:
        pass

    try:
        how_often_news_media_abuses_its_freedom, _ = get_stat_data(
            'how_often_news_media_abuses_its_freedom', geo, session,
            table_fields=['how_often_news_media_abuses_its_freedom'])
    except LocationNotFound:
        pass

    try:
        how_often_party_competition_leads_to_conflict, _ = get_stat_data(
            'how_often_party_competition_leads_to_conflict', geo, session,
            table_fields=['how_often_party_competition_leads_to_conflict'])
    except LocationNotFound:
        pass

    try:
        how_often_president_ignores_laws, _ = get_stat_data(
            'how_often_president_ignores_laws', geo, session,
            table_fields=['how_often_president_ignores_laws'])
    except LocationNotFound:
        pass

    try:
        age, _ = get_stat_data('age', geo, session, table_fields=['age'])
    except LocationNotFound:
        pass

    try:
        overall_direction_of_the_country, _ = get_stat_data(
            'overall_direction_of_the_country', geo, session,
            table_fields=['overall_direction_of_the_country'])
    except LocationNotFound:
        pass

    try:
        language_of_respondent, _ = get_stat_data('language_of_respondent', geo,
                                                  session, table_fields=[
                'language_of_respondent'])
    except LocationNotFound:
        pass

    try:
        your_living_conditions_vs, _ = get_stat_data(
            'your_living_conditions_vs', geo, session,
            table_fields=['your_living_conditions_vs'])
    except LocationNotFound:
        pass

    try:
        countrys_economic_condition_in_12_months_time, _ = get_stat_data(
            'countrys_economic_condition_in_12_months_time', geo, session,
            table_fields=['countrys_economic_condition_in_12_months_time'])
    except LocationNotFound:
        pass

    try:
        countrys_economic_condition_compared_to_12_months_ago, _ = get_stat_data(
            'countrys_economic_condition_compared_to_12_months_ago', geo,
            session, table_fields=[
                'countrys_economic_condition_compared_to_12_months_ago'])
    except LocationNotFound:
        pass

    try:
        how_often_received_remittances, _ = get_stat_data(
            'how_often_received_remittances', geo, session,
            table_fields=['how_often_received_remittances'])
    except LocationNotFound:
        pass

    try:
        handling_providing_water_and_sanitation_services, _ = get_stat_data(
            'handling_providing_water_and_sanitation_services', geo, session,
            table_fields=['handling_providing_water_and_sanitation_services'])
    except LocationNotFound:
        pass

    try:
        negative_image_of_china, _ = get_stat_data('negative_image_of_china',
                                                   geo, session, table_fields=[
                'negative_image_of_china'])
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
        how_often_felt_unsafe_walking_in_neighbourhood, _ = get_stat_data(
            'how_often_felt_unsafe_walking_in_neighbourhood', geo, session,
            table_fields=['how_often_felt_unsafe_walking_in_neighbourhood'])
    except LocationNotFound:
        pass

    try:
        contact_with_government_court_or_tribunal, _ = get_stat_data(
            'contact_with_government_court_or_tribunal', geo, session,
            table_fields=['contact_with_government_court_or_tribunal'])
    except LocationNotFound:
        pass

    try:
        elections_enable_voters_to_remove_leaders_from_office, _ = get_stat_data(
            'elections_enable_voters_to_remove_leaders_from_office', geo,
            session, table_fields=[
                'elections_enable_voters_to_remove_leaders_from_office'])
    except LocationNotFound:
        pass

    try:
        performance_mpnational_assembly_rep, _ = get_stat_data(
            'performance_mpnational_assembly_rep', geo, session,
            table_fields=['performance_mpnational_assembly_rep'])
    except LocationNotFound:
        pass

    try:
        performance_traditional_leader, _ = get_stat_data(
            'performance_traditional_leader', geo, session,
            table_fields=['performance_traditional_leader'])
    except LocationNotFound:
        pass

    try:
        political_opposition_is_viable_alternative, _ = get_stat_data(
            'political_opposition_is_viable_alternative', geo, session,
            table_fields=['political_opposition_is_viable_alternative'])
    except LocationNotFound:
        pass

    try:
        elections_ensure_voters_views_are_reflected, _ = get_stat_data(
            'elections_ensure_voters_views_are_reflected', geo, session,
            table_fields=['elections_ensure_voters_views_are_reflected'])
    except LocationNotFound:
        pass

    final_data = {
        'performance_president': performance_president,
        'countrys_present_economic_condition': countrys_present_economic_condition,
        'african_union_helps_country': african_union_helps_country,
        'regional_organisation_helps_country': regional_organisation_helps_country,
        'freedom_to_say_what_you_think': freedom_to_say_what_you_think,
        'freedom_to_choose_who_to_vote_for': freedom_to_choose_who_to_vote_for,
        'freedom_to_join_any_political_organizations': freedom_to_join_any_political_organizations,
        'trust_tax_department': trust_tax_department,
        'leaders_serve_interests_of_people_or_their_own': leaders_serve_interests_of_people_or_their_own,
        'trust_the_ruling_party': trust_the_ruling_party,
        'trust_opposition_political_parties': trust_opposition_political_parties,
        'trust_president': trust_president,
        'trust_parliamentnational_assembly': trust_parliamentnational_assembly,
        'trust_national_electoral_commission': trust_national_electoral_commission,
        'trust_religious_leaders': trust_religious_leaders,
        'pay_more_taxes_to_increase_health_spending': pay_more_taxes_to_increase_health_spending,
        'trust_police': trust_police,
        'trust_army': trust_army,
        'trust_courts_of_law': trust_courts_of_law,
        'trust_traditional_leaders': trust_traditional_leaders,
        'most_effective_way_to_combat_corruption': most_effective_way_to_combat_corruption,
        'people_can_fight_corruption': people_can_fight_corruption,
        'difficulty_of_crossing_borders': difficulty_of_crossing_borders,
        'how_effective_the_news_media_reveals_government_mistakes_and_corruption': how_effective_the_news_media_reveals_government_mistakes_and_corruption,
        'handling_providing_reliable_electric_supply': handling_providing_reliable_electric_supply,
        'handling_maintaining_roads_and_bridges': handling_maintaining_roads_and_bridges,
        'handling_fighting_corruption': handling_fighting_corruption,
        'handling_ensuring_enough_to_eat': handling_ensuring_enough_to_eat,
        'extent_of_democracy': extent_of_democracy,
        'handling_addressing_educational_needs': handling_addressing_educational_needs,
        'handling_reducing_crime': handling_reducing_crime,
        'handling_narrowing_income_gaps': handling_narrowing_income_gaps,
        'handling_keeping_prices_down': handling_keeping_prices_down,
        'handling_creating_jobs': handling_creating_jobs,
        'handling_improving_living_standards_of_the_poor': handling_improving_living_standards_of_the_poor,
        'handling_managing_the_economy': handling_managing_the_economy,
        'difficulty_to_find_out_what_taxes_or_fees_to_pay': difficulty_to_find_out_what_taxes_or_fees_to_pay,
        'difficulty_to_avoid_paying_taxes': difficulty_to_avoid_paying_taxes,
        'country_with_most_influence': country_with_most_influence,
        'model_country_for_development': model_country_for_development,
        'last_national_election_work_for_a_candidate_or_party': last_national_election_work_for_a_candidate_or_party,
        'last_national_election_attend_a_campaign_rally': last_national_election_attend_a_campaign_rally,
        'last_national_election_attend_a_campaign_meeting': last_national_election_attend_a_campaign_meeting,
        'last_national_election_persuade_others_to_vote_for_a_certain_candidate_or_party': last_national_election_persuade_others_to_vote_for_a_certain_candidate_or_party,
        'courts_make_binding_decisions': courts_make_binding_decisions,
        'people_must_pay_taxes': people_must_pay_taxes,
        'people_must_obey_the_law': people_must_obey_the_law,
        'religion_of_respondent': religion_of_respondent,
        'problems_with_courts_too_expensive': problems_with_courts_too_expensive,
        'problems_with_courts_no_advice': problems_with_courts_no_advice,
        'problems_with_courts_too_complex': problems_with_courts_too_complex,
        'problems_with_courts_long_delays': problems_with_courts_long_delays,
        'problems_with_courts_judge_did_not_listen': problems_with_courts_judge_did_not_listen,
        'how_often_use_a_mobile_phone': how_often_use_a_mobile_phone,
        'how_often_use_the_internet': how_often_use_the_internet,
        'trust_your_elected_local_government_council': trust_your_elected_local_government_council,
        'have_been_physically_attacked': have_been_physically_attacked,
        'vote_for_which_party': vote_for_which_party,
        'how_often_gone_without_water': how_often_gone_without_water,
        'contact_local_government_councilor': contact_local_government_councilor,
        'corruption_tax_officials': corruption_tax_officials,
        'contact_official_of_a_government_agency': contact_official_of_a_government_agency,
        'contact_mp': contact_mp,
        'contact_traditional_leader': contact_traditional_leader,
        'contact_political_party_official': contact_political_party_official,
        'corruption_office_of_the_presidency': corruption_office_of_the_presidency,
        'contact_religious_leader': contact_religious_leader,
        'how_often_gone_without_cash_income': how_often_gone_without_cash_income,
        'corruption_business_executives': corruption_business_executives,
        'corruption_religious_leaders': corruption_religious_leaders,
        'corruption_traditional_leaders': corruption_traditional_leaders,
        'voting_in_the_most_recent_national_election': voting_in_the_most_recent_national_election,
        'freeness_and_fairness_of_the_last_national_election': freeness_and_fairness_of_the_last_national_election,
        'own_radio': own_radio,
        'own_motor_vehicle': own_motor_vehicle,
        'own_television': own_television,
        'own_mobile_phone': own_mobile_phone,
        'type_of_shelter_of_respondent': type_of_shelter_of_respondent,
        'roof_of_respondents_home': roof_of_respondents_home,
        'level_of_corruption': level_of_corruption,
        'had_something_stolen_from_house': had_something_stolen_from_house,
        'how_often_gone_without_medical_care': how_often_gone_without_medical_care,
        'how_often_gone_without_food': how_often_gone_without_food,
        'who_responsible_local_councilors_do_jobs': who_responsible_local_councilors_do_jobs,
        'who_responsible_president_does_job': who_responsible_president_does_job,
        'how_often_gone_without_cooking_fuel': how_often_gone_without_cooking_fuel,
        'who_responsible_mps_do_jobs': who_responsible_mps_do_jobs,
        'employment_status': employment_status,
        'education_of_respondent': education_of_respondent,
        'discuss_politics': discuss_politics,
        'interest_in_public_affairs': interest_in_public_affairs,
        'occupation_of_respondent': occupation_of_respondent,
        'employer_of_respondent': employer_of_respondent,
        'corruption_judges_and_magistrates': corruption_judges_and_magistrates,
        'corruption_police': corruption_police,
        'corruption_local_government_councilors': corruption_local_government_councilors,
        'corruption_government_officials': corruption_government_officials,
        'satisfaction_with_democracy': satisfaction_with_democracy,
        'corruption_members_of_parliament': corruption_members_of_parliament,
        'how_often_opposition_parties_silenced_by_government': how_often_opposition_parties_silenced_by_government,
        'how_often_president_ignores_parliament': how_often_president_ignores_parliament,
        'how_often_news_media_abuses_its_freedom': how_often_news_media_abuses_its_freedom,
        'how_often_party_competition_leads_to_conflict': how_often_party_competition_leads_to_conflict,
        'how_often_president_ignores_laws': how_often_president_ignores_laws,
        'overall_direction_of_the_country': overall_direction_of_the_country,
        'language_of_respondent': language_of_respondent,
        'your_living_conditions_vs': your_living_conditions_vs,
        'countrys_economic_condition_in_12_months_time': countrys_economic_condition_in_12_months_time,
        'countrys_economic_condition_compared_to_12_months_ago': countrys_economic_condition_compared_to_12_months_ago,
        'how_often_received_remittances': how_often_received_remittances,
        'handling_providing_water_and_sanitation_services': handling_providing_water_and_sanitation_services,
        'negative_image_of_china': negative_image_of_china,
        'chinas_influence_on_economy': chinas_influence_on_economy,
        'chinas_influence_positive_or_negative': chinas_influence_positive_or_negative,
        'positive_image_of_china': positive_image_of_china,
        'how_often_felt_unsafe_walking_in_neighbourhood': how_often_felt_unsafe_walking_in_neighbourhood,
        'contact_with_government_court_or_tribunal': contact_with_government_court_or_tribunal,
        'elections_enable_voters_to_remove_leaders_from_office': elections_enable_voters_to_remove_leaders_from_office,
        'performance_mpnational_assembly_rep': performance_mpnational_assembly_rep,
        'performance_traditional_leader': performance_traditional_leader,
        'political_opposition_is_viable_alternative': political_opposition_is_viable_alternative,
        'elections_ensure_voters_views_are_reflected': elections_ensure_voters_views_are_reflected,

    }

    return final_data
