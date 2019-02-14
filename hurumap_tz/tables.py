from wazimap.data.tables import FieldTable, SimpleTable

# Define our tables so the data API can discover them.
FieldTable(['rural or urban', 'sex', 'age in completed years'],
           dataset='Census', year='2012')
# tz wards do not have population breakdown by age so they have a separate table
FieldTable(['rural or urban', 'sex'], dataset='Census', year='2012')
FieldTable(['employment activity status', 'sex'],
           universe='People aged 5 years and older', dataset='Census',
           year='2012')
FieldTable(['school attendance', 'sex'],
           universe='People aged 3 years and older', dataset='Census',
           year='2012')
FieldTable(['highest education level reached'],
           universe='People aged 3 years and older', dataset='Census',
           year='2012')
FieldTable(['main mode of human waste disposal'], universe='Households',
           dataset='Census', year='2012')
FieldTable(['main source of water'], universe='Households', dataset='Census',
           year='2012')
FieldTable(['main type of lighting fuel'], universe='Households',
           dataset='Census', year='2012')
FieldTable(['main type of floor material'], universe='Households',
           dataset='Census', year='2012')
FieldTable(['main type of wall material'], universe='Households',
           dataset='Census', year='2012')
FieldTable(['main type of roofing material'], universe='Households',
           dataset='Census', year='2012')
FieldTable(['literacy test'], dataset='Uwezo Annual Assessment Report',
           year='2015')
FieldTable(['pepfar'], dataset='Uwezo Annual Assessment Report', year='2015')
FieldTable(['school attendance'], dataset='Uwezo Annual Assessment Report',
           year='2015')
FieldTable(['pupil teacher ratios'], dataset='Uwezo Annual Assessment Report',
           year='2015')
FieldTable(['school amenity'], dataset='Uwezo Annual Assessment Report',
           year='2015')
FieldTable(['causes of death under five'],
           dataset='Ministry of Health and Social Welfare - DHIS2', year='2015')
FieldTable(['causes of death over five'],
           dataset='Ministry of Health and Social Welfare - DHIS2', year='2015')
FieldTable(['inpatient diagnosis over five'],
           dataset='Ministry of Health and Social Welfare - DHIS2', year='2015')
FieldTable(['inpatient diagnosis under five'],
           dataset='Ministry of Health and Social Welfare - DHIS2', year='2015')
FieldTable(['outpatient diagnosis over five'],
           dataset='Ministry of Health and Social Welfare - DHIS2', year='2015')
FieldTable(['outpatient diagnosis under five'],
           dataset='Ministry of Health and Social Welfare - DHIS2', year='2015')
FieldTable(['family planning clients'],
           dataset='Ministry of Health and Social Welfare - DHIS2', year='2015')
FieldTable(['place of delivery'],
           dataset='Ministry of Health and Social Welfare - DHIS2', year='2015')
FieldTable(['health workers'],
           dataset='Ministry of Health and Social Welfare - DHIS2', year='2015')
FieldTable(['health centers'],
           dataset='Ministry of Health and Social Welfare - DHIS2', year='2015')
FieldTable(['health center ownership'],
           dataset='Ministry of Health and Social Welfare - DHIS2', year='2015')
FieldTable(['hiv centers'], dataset='PEPFER Report', year='2015')
FieldTable(['tetanus vaccine'],
           dataset='Ministry of Health and Social Welfare - DHIS2', year='2015')
FieldTable(['traffic and crimes'], dataset='Police Report', year='2015')
FieldTable(['primary school teachers'],
           dataset='Uwezo Annual Assessment Report', year='2015')
FieldTable(['water sources'], dataset='Census', year='2012')
FieldTable(['airport types'], dataset='Airports', year='2015')
# FieldTable(['primary school desks'])

FieldTable(['own_radio'], year=2016, dataset='Afrobarometer Survey',
           id='own_radio')
FieldTable(['own_motor_vehicle'], year=2016, dataset='Afrobarometer Survey',
           id='own_motor_vehicle')
FieldTable(['own_television'], year=2016, dataset='Afrobarometer Survey',
           id='own_television')
FieldTable(['own_mobile_phone'], year=2016, dataset='Afrobarometer Survey',
           id='own_mobile_phone')
FieldTable(['election_work_for_candidate_or_party'], year=2016,
           dataset='Afrobarometer Survey',
           id='election_work_for_candidate_or_party')
FieldTable(['election_attend_campaign_rally'], year=2016,
           dataset='Afrobarometer Survey', id='election_attend_campaign_rally')
FieldTable(['election_attend_campaign_meeting'], year=2016,
           dataset='Afrobarometer Survey',
           id='election_attend_campaign_meeting')
FieldTable(['courts_make_binding_decisions'], year=2016,
           dataset='Afrobarometer Survey', id='courts_make_binding_decisions')
FieldTable(['vote_for_which_party'], year=2016, dataset='Afrobarometer Survey',
           id='vote_for_which_party')
FieldTable(['level_of_corruption'], year=2016, dataset='Afrobarometer Survey',
           id='level_of_corruption')
FieldTable(['chinas_assistance_meets_country_needs'], year=2016,
           dataset='Afrobarometer Survey',
           id='chinas_assistance_meets_country_needs')
FieldTable(['employment_status'], year=2016, dataset='Afrobarometer Survey',
           id='employment_status')
FieldTable(['main_reason_for_not_reporting_corruption'], year=2016,
           dataset='Afrobarometer Survey',
           id='main_reason_for_not_reporting_corruption')
FieldTable(['education_of_respondent'], year=2016,
           dataset='Afrobarometer Survey', id='education_of_respondent')
FieldTable(['people_must_pay_taxes'], year=2016, dataset='Afrobarometer Survey',
           id='people_must_pay_taxes')
FieldTable(['negative_image_of_china'], year=2016,
           dataset='Afrobarometer Survey', id='negative_image_of_china')
FieldTable(['most_effective_way_to_combat_corruption'], year=2016,
           dataset='Afrobarometer Survey',
           id='most_effective_way_to_combat_corruption')
FieldTable(['people_can_fight_corruption'], year=2016,
           dataset='Afrobarometer Survey', id='people_can_fight_corruption')
FieldTable(['people_must_obey_the_law'], year=2016,
           dataset='Afrobarometer Survey', id='people_must_obey_the_law')
FieldTable(['chinas_influence_on_economy'], year=2016,
           dataset='Afrobarometer Survey', id='chinas_influence_on_economy')
FieldTable(['chinas_influence_positive_or_negative'], year=2016,
           dataset='Afrobarometer Survey',
           id='chinas_influence_positive_or_negative')
FieldTable(['positive_image_of_china'], year=2016,
           dataset='Afrobarometer Survey', id='positive_image_of_china')
FieldTable(['occupation_of_respondent'], year=2016,
           dataset='Afrobarometer Survey', id='occupation_of_respondent')
FieldTable(['employer_of_respondent'], year=2016,
           dataset='Afrobarometer Survey', id='employer_of_respondent')
FieldTable(['how_often_use_a_mobile_phone'], year=2016,
           dataset='Afrobarometer Survey', id='how_often_use_a_mobile_phone')
FieldTable(['how_often_use_the_internet'], year=2016,
           dataset='Afrobarometer Survey', id='how_often_use_the_internet')
FieldTable(['freeness_and_fairness_last_elections'], year=2016,
           dataset='Afrobarometer Survey',
           id='freeness_and_fairness_last_elections')
FieldTable(['extent_of_democracy'], year=2016, dataset='Afrobarometer Survey',
           id='extent_of_democracy')
FieldTable(['elections_ensure_voters_views_are_reflected'], year=2016,
           dataset='Afrobarometer Survey',
           id='elections_ensure_voters_views_are_reflected')
FieldTable(['corruption_judges_and_magistrates'], year=2016,
           dataset='Afrobarometer Survey',
           id='corruption_judges_and_magistrates')
FieldTable(['elections_to_remove_leaders_from_office'], year=2016,
           dataset='Afrobarometer Survey',
           id='elections_to_remove_leaders_from_office')
FieldTable(['corruption_tax_officials'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_tax_officials')
FieldTable(['corruption_police'], year=2016, dataset='Afrobarometer Survey',
           id='corruption_police')
FieldTable(['corruption_local_gov_councilors'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_local_gov_councilors')
FieldTable(['corruption_gov_officials'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_gov_officials')
FieldTable(['corruption_mps'], year=2016, dataset='Afrobarometer Survey',
           id='corruption_mps')
FieldTable(['corruption_president_office'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_president_office')
FieldTable(['satisfaction_with_democracy'], year=2016,
           dataset='Afrobarometer Survey', id='satisfaction_with_democracy')
FieldTable(['corruption_business_executives'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_business_executives')
FieldTable(['corruption_religious_leaders'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_religious_leaders')
FieldTable(['corruption_traditional_leaders'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_traditional_leaders')
FieldTable(['difficulty_to_obtain_public_school_services'], year=2016,
           dataset='Afrobarometer Survey',
           id='difficulty_to_obtain_public_school_services')
FieldTable(['voting_recent_national_election'], year=2016,
           dataset='Afrobarometer Survey', id='voting_recent_national_election')
FieldTable(['difficulty_to_obtain_medical_treatment'], year=2016,
           dataset='Afrobarometer Survey',
           id='difficulty_to_obtain_medical_treatment')
FieldTable(['pay_bribe_for_school_services'], year=2016,
           dataset='Afrobarometer Survey', id='pay_bribe_for_school_services')
FieldTable(['difficulty_to_obtain_identity_document'], year=2016,
           dataset='Afrobarometer Survey',
           id='difficulty_to_obtain_identity_document')
FieldTable(['pay_bribe_treatment_public_health'], year=2016,
           dataset='Afrobarometer Survey',
           id='pay_bribe_treatment_public_health')
FieldTable(['difficulty_to_obtain_household_services'], year=2016,
           dataset='Afrobarometer Survey',
           id='difficulty_to_obtain_household_services')
FieldTable(['pay_bribe_for_document_or_permit'], year=2016,
           dataset='Afrobarometer Survey',
           id='pay_bribe_for_document_or_permit')
FieldTable(['pay_bribe_for_household_services'], year=2016,
           dataset='Afrobarometer Survey',
           id='pay_bribe_for_household_services')

