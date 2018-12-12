from wazimap.data.tables import FieldTable

# Define our tables so the data API can discover them.
FieldTable(['gender', 'age group'], dataset='Census', year=2010)
FieldTable(['gender', 'rural or urban'], dataset='Census', year=2010)

FieldTable(['own_radio'], year=2016, dataset='Afrobarometer Survey',
           id='own_radio')
FieldTable(['own_motor_vehicle'], year=2016, dataset='Afrobarometer Survey',
           id='own_motor_vehicle')
FieldTable(['own_television'], year=2016, dataset='Afrobarometer Survey',
           id='own_television')
FieldTable(['own_mobile_phone'], year=2016, dataset='Afrobarometer Survey',
           id='own_mobile_phone')
FieldTable(['last_national_election_work_for_a_candidate_or_party'], year=2016,
           dataset='Afrobarometer Survey',
           id='last_national_election_work_for_a_candidate_or_party')
FieldTable(['last_national_election_attend_a_campaign_rally'], year=2016,
           dataset='Afrobarometer Survey',
           id='last_national_election_attend_a_campaign_rally')
FieldTable(['last_national_election_attend_a_campaign_meeting'], year=2016,
           dataset='Afrobarometer Survey',
           id='last_national_election_attend_a_campaign_meeting')
FieldTable(['courts_make_binding_decisions'], year=2016,
           dataset='Afrobarometer Survey', id='courts_make_binding_decisions')
FieldTable(['vote_for_which_party'], year=2016, dataset='Afrobarometer Survey',
           id='vote_for_which_party')
FieldTable(['level_of_corruption'], year=2016, dataset='Afrobarometer Survey',
           id='level_of_corruption')
FieldTable(['chinas_assistance_does_a_good_job_at_meeting_countrys_needs'],
           year=2016, dataset='Afrobarometer Survey',
           id='chinas_assistance_does_a_good_job_at_meeting_countrys_needs')
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
FieldTable(['freeness_and_fairness_of_the_last_national_election'], year=2016,
           dataset='Afrobarometer Survey',
           id='freeness_and_fairness_of_the_last_national_election')
FieldTable(['extent_of_democracy'], year=2016, dataset='Afrobarometer Survey',
           id='extent_of_democracy')
FieldTable(['elections_ensure_voters_views_are_reflected'], year=2016,
           dataset='Afrobarometer Survey',
           id='elections_ensure_voters_views_are_reflected')
FieldTable(['corruption_judges_and_magistrates'], year=2016,
           dataset='Afrobarometer Survey',
           id='corruption_judges_and_magistrates')
FieldTable(['elections_enable_voters_to_remove_leaders_from_office'], year=2016,
           dataset='Afrobarometer Survey',
           id='elections_enable_voters_to_remove_leaders_from_office')
FieldTable(['corruption_tax_officials'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_tax_officials')
FieldTable(['corruption_police'], year=2016, dataset='Afrobarometer Survey',
           id='corruption_police')
FieldTable(['corruption_local_government_councilors'], year=2016,
           dataset='Afrobarometer Survey',
           id='corruption_local_government_councilors')
FieldTable(['corruption_government_officials'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_government_officials')
FieldTable(['corruption_members_of_parliament'], year=2016,
           dataset='Afrobarometer Survey',
           id='corruption_members_of_parliament')
FieldTable(['corruption_office_of_the_presidency'], year=2016,
           dataset='Afrobarometer Survey',
           id='corruption_office_of_the_presidency')
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
FieldTable(['voting_in_the_most_recent_national_election'], year=2016,
           dataset='Afrobarometer Survey',
           id='voting_in_the_most_recent_national_election')
FieldTable(['difficulty_to_obtain_medical_treatment'], year=2016,
           dataset='Afrobarometer Survey',
           id='difficulty_to_obtain_medical_treatment')
FieldTable(['pay_bribe_for_school_services'], year=2016,
           dataset='Afrobarometer Survey', id='pay_bribe_for_school_services')
FieldTable(['difficulty_to_obtain_identity_document'], year=2016,
           dataset='Afrobarometer Survey',
           id='difficulty_to_obtain_identity_document')
FieldTable(['pay_bribe_for_treatment_at_public_clinic_or_hospital'], year=2016,
           dataset='Afrobarometer Survey',
           id='pay_bribe_for_treatment_at_public_clinic_or_hospital')
FieldTable(['difficulty_to_obtain_household_services'], year=2016,
           dataset='Afrobarometer Survey',
           id='difficulty_to_obtain_household_services')
FieldTable(['pay_bribe_for_document_or_permit'], year=2016,
           dataset='Afrobarometer Survey',
           id='pay_bribe_for_document_or_permit')
FieldTable(['pay_bribe_for_household_services'], year=2016,
           dataset='Afrobarometer Survey',
           id='pay_bribe_for_household_services')

