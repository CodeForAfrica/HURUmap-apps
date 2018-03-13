from wazimap.data.tables import FieldTable

# Define our tables so the data API can discover them.
# TODO: Add comments so that we can quickly see categories/topics
# TODO: Rework format to a standard
FieldTable(['code', 'name', 'region', 'district', 'ward', 'ownership', 'latitude', 'longitude',
    'pass_rate', 'change_previous_year_pass_rate', 'avg_gpa', 'chane_previous_year_gpa', 'rank',
    'year_of_result', 'more_than_40', 'national_rank_all', 'regional_rank_all',
    'district_rank_all'], id='secondary_schools')
# 
# FieldTable([], id='olevel_subject_performance')
# FieldTable([], id='alevel_subject_performance')
# FieldTable([], id='olevel_student_performance')
# FieldTable([], id='alevel_student_performance')
# FieldTable([], id='olevel_overall_performance')
# FieldTable([], id='alevel_overall_performance')
