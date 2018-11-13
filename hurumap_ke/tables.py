from wazimap.data.tables import FieldTable

# Define our tables so the data API can discover them.
# TODO: Add comments so that we can quickly see categories/topics
# TODO: Rework format to a standard

FieldTable(
    ['rural or urban', 'sex', 'age in completed years'],
    year='2009'
)
FieldTable(
    ['employment activity status', 'sex'],
    universe='People aged 5 years and older',
    year='2009'
)
FieldTable(
    ['school attendance', 'sex'],
    universe='People aged 3 years and older',
    year='2009'
)
FieldTable(
    ['highest education level reached'],
    universe='People aged 3 years and older',
    year='2009'
)
FieldTable(
    ['main mode of human waste disposal'],
    universe='Households',
    year='2009'
)
FieldTable(
    id='religion',
    fields=['religion'],
    year=2009
)

FieldTable(
    id='household_heads',
    fields=['Household_Heads'],
    year=2009
)
FieldTable(['main source of water'], universe='Households', year='2009')
FieldTable(['main type of lighting fuel'], universe='Households', year='2009')
FieldTable(['main type of floor material'], universe='Households', year='2009')
FieldTable(['main type of wall material'], universe='Households', year='2009')
FieldTable(
    ['main type of roofing material'],
    universe='Households',
    year='2009'
)


FieldTable(['contraceptive_use'], universe='Contraceptive_use', year='2014')
FieldTable(
    ['contraceptive_modern_method'],
    universe='Contraceptive_use',
    year='2014'
)
FieldTable(
    ['contraceptive_traditional_method'],
    universe='Contraceptive_use',
    year='2014'
)
FieldTable(
    ['maternal care indicators'],
    universe='Maternal care indicators',
    year='2014'
)
FieldTable(['use of ipt'], universe='Maternal care indicators', year='2014')
FieldTable(['knowledge of hiv prevention methods', 'sex'], year='2014')
FieldTable(['household possession of itn'], universe='ITN', year='2014')
FieldTable(['household', 'users', 'itn_use'], universe='ITN', year='2014')
FieldTable(['fertility'], year='2014')
FieldTable(['vaccinations'], year='2014')
FieldTable(['weight for age'], universe='Nutrition', year='2014')
FieldTable(['height for age'], universe='Nutrition', year='2014')
FieldTable(['weight for height'], universe='Nutrition', year='2014')
FieldTable(['type', 'treatment'], year='2014')
FieldTable(['treatment of children with fever'], year='2014')
FieldTable(['protests'], year='2014')
FieldTable(['schoolfires'], year='2016')
FieldTable(['crimereport'], year='2015')
FieldTable(['typesofcrime'], year='2015')
FieldTable(['healthratios'], year='2014')
FieldTable(['voterregistration_2015'], year='2014')
FieldTable(['voterregistration_2017'], year='2017')
FieldTable(['crop_production'], year='2014')
FieldTable(['livestock_population'], year='2014')
FieldTable(['livestock_products'], year='2014')

# afrobarometer
FieldTable(['performance_president'], year=2016)
FieldTable(['countrys_present_economic_condition'], year=2016)
FieldTable(['african_union_helps_country'], year=2016)
FieldTable(['regional_organisation_helps_country'], year=2016)
FieldTable(['freedom_to_say_what_you_think'], year=2016)
FieldTable(['freedom_to_choose_who_to_vote_for'], year=2016)
FieldTable(['freedom_to_join_any_political_organizations'], year=2016)
FieldTable(['trust_tax_department'], year=2016)
FieldTable(['leaders_serve_interests_of_people_or_their_own'], year=2016)
FieldTable(['trust_the_ruling_party'], year=2016)
FieldTable(['trust_opposition_political_parties'], year=2016)
FieldTable(['trust_president'], year=2016)
FieldTable(['trust_parliamentnational_assembly'], year=2016)
FieldTable(['trust_national_electoral_commission'], year=2016)
FieldTable(['trust_religious_leaders'], year=2016)
FieldTable(['pay_more_taxes_to_increase_health_spending'], year=2016)
FieldTable(['trust_police'], year=2016)
FieldTable(['trust_army'], year=2016)
FieldTable(['trust_courts_of_law'], year=2016)
FieldTable(['trust_traditional_leaders'], year=2016)
FieldTable(['most_effective_way_to_combat_corruption'], year=2016)
FieldTable(['people_can_fight_corruption'], year=2016)
FieldTable(['difficulty_of_crossing_borders'], year=2016)
FieldTable(['how_effective_the_news_media_reveals_government_mistakes_and_corruption'], year=2016)
FieldTable(['handling_providing_reliable_electric_supply'], year=2016)
FieldTable(['handling_maintaining_roads_and_bridges'], year=2016)
FieldTable(['handling_fighting_corruption'], year=2016)
FieldTable(['handling_ensuring_enough_to_eat'], year=2016)
FieldTable(['extent_of_democracy'], year=2016)
FieldTable(['handling_addressing_educational_needs'], year=2016)
FieldTable(['handling_reducing_crime'], year=2016)
FieldTable(['handling_narrowing_income_gaps'], year=2016)
FieldTable(['handling_keeping_prices_down'], year=2016)
FieldTable(['handling_creating_jobs'], year=2016)
FieldTable(['handling_improving_living_standards_of_the_poor'], year=2016)
FieldTable(['handling_managing_the_economy'], year=2016)
FieldTable(['difficulty_to_find_out_what_taxes_or_fees_to_pay'], year=2016)
FieldTable(['difficulty_to_avoid_paying_taxes'], year=2016)
FieldTable(['country_with_most_influence'], year=2016)
FieldTable(['model_country_for_development'], year=2016)
FieldTable(['last_national_election_work_for_a_candidate_or_party'], year=2016)
FieldTable(['last_national_election_attend_a_campaign_rally'], year=2016)
FieldTable(['last_national_election_attend_a_campaign_meeting'], year=2016)
FieldTable(['last_national_election_persuade_others_to_vote_for_a_certain_candidate_or_party'], year=2016)
FieldTable(['courts_make_binding_decisions'], year=2016)
FieldTable(['people_must_pay_taxes'], year=2016)
FieldTable(['people_must_obey_the_law'], year=2016)
FieldTable(['religion_of_respondent'], year=2016)
FieldTable(['problems_with_courts_too_expensive'], year=2016)
FieldTable(['problems_with_courts_no_advice'], year=2016)
FieldTable(['problems_with_courts_too_complex'], year=2016)
FieldTable(['problems_with_courts_long_delays'], year=2016)
FieldTable(['problems_with_courts_judge_did_not_listen'], year=2016)
FieldTable(['how_often_use_a_mobile_phone'], year=2016)
FieldTable(['how_often_use_the_internet'], year=2016)
FieldTable(['trust_your_elected_local_government_council'], year=2016)
FieldTable(['have_been_physically_attacked'], year=2016)
FieldTable(['vote_for_which_party'], year=2016)
FieldTable(['how_often_gone_without_water'], year=2016)
FieldTable(['contact_local_government_councilor'], year=2016)
FieldTable(['corruption_tax_officials'], year=2016)
FieldTable(['contact_official_of_a_government_agency'], year=2016)
FieldTable(['contact_mp'], year=2016)
FieldTable(['contact_traditional_leader'], year=2016)
FieldTable(['contact_political_party_official'], year=2016)
FieldTable(['corruption_office_of_the_presidency'], year=2016)
FieldTable(['contact_religious_leader'], year=2016)
FieldTable(['how_often_gone_without_cash_income'], year=2016)
FieldTable(['corruption_business_executives'], year=2016)
FieldTable(['corruption_religious_leaders'], year=2016)
FieldTable(['corruption_traditional_leaders'], year=2016)
FieldTable(['voting_in_the_most_recent_national_election'], year=2016)
FieldTable(['freeness_and_fairness_of_the_last_national_election'], year=2016)
FieldTable(['own_radio'], year=2016)
FieldTable(['own_motor_vehicle'], year=2016)
FieldTable(['own_television'], year=2016)
FieldTable(['own_mobile_phone'], year=2016)
FieldTable(['type_of_shelter_of_respondent'], year=2016)
FieldTable(['roof_of_respondents_home'], year=2016)
FieldTable(['level_of_corruption'], year=2016)
FieldTable(['had_something_stolen_from_house'], year=2016)
FieldTable(['how_often_gone_without_medical_care'], year=2016)
FieldTable(['how_often_gone_without_food'], year=2016)
FieldTable(['who_responsible_local_councilors_do_jobs'], year=2016)
FieldTable(['who_responsible_president_does_job'], year=2016)
FieldTable(['how_often_gone_without_cooking_fuel'], year=2016)
FieldTable(['who_responsible_mps_do_jobs'], year=2016)
FieldTable(['employment_status'], year=2016)
FieldTable(['education_of_respondent'], year=2016)
FieldTable(['discuss_politics'], year=2016)
FieldTable(['interest_in_public_affairs'], year=2016)
FieldTable(['occupation_of_respondent'], year=2016)
FieldTable(['employer_of_respondent'], year=2016)
FieldTable(['corruption_judges_and_magistrates'], year=2016)
FieldTable(['corruption_police'], year=2016)
FieldTable(['corruption_local_government_councilors'], year=2016)
FieldTable(['corruption_government_officials'], year=2016)
FieldTable(['satisfaction_with_democracy'], year=2016)
FieldTable(['corruption_members_of_parliament'], year=2016)
FieldTable(['how_often_opposition_parties_silenced_by_government'], year=2016)
FieldTable(['how_often_president_ignores_parliament'], year=2016)
FieldTable(['how_often_news_media_abuses_its_freedom'], year=2016)
FieldTable(['how_often_party_competition_leads_to_conflict'], year=2016)
FieldTable(['how_often_president_ignores_laws'], year=2016)
FieldTable(['age'], year=2016)
FieldTable(['overall_direction_of_the_country'], year=2016)
FieldTable(['language_of_respondent'], year=2016)
FieldTable(['your_living_conditions_vs'], year=2016)
FieldTable(['countrys_economic_condition_in_12_months_time'], year=2016)
FieldTable(['countrys_economic_condition_compared_to_12_months_ago'], year=2016)
FieldTable(['how_often_received_remittances'], year=2016)
FieldTable(['handling_providing_water_and_sanitation_services'], year=2016)
FieldTable(['negative_image_of_china'], year=2016)
FieldTable(['chinas_influence_on_economy'], year=2016)
FieldTable(['chinas_influence_positive_or_negative'], year=2016)
FieldTable(['positive_image_of_china'], year=2016)
FieldTable(['how_often_felt_unsafe_walking_in_neighbourhood'], year=2016)
FieldTable(['contact_with_government_court_or_tribunal'], year=2016)
FieldTable(['elections_enable_voters_to_remove_leaders_from_office'], year=2016)
FieldTable(['performance_mpnational_assembly_rep'], year=2016)
FieldTable(['performance_traditional_leader'], year=2016)
FieldTable(['political_opposition_is_viable_alternative'], year=2016)
FieldTable(['elections_ensure_voters_views_are_reflected'], year=2016)
