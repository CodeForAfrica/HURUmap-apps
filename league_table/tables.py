from wazimap.data.tables import FieldTable

# Define our tables so the data API can discover them.
# TODO: Add comments so that we can quickly see categories/topics
# TODO: Rework format to a standard
FieldTable(['code', 'name', 'ownership', 'pass rate', 'rank'], id='secondary_schools')