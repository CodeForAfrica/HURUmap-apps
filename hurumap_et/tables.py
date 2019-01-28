from wazimap.data.tables import FieldTable

# Define our tables so the data API can discover them.
FieldTable(['gender', 'age_group'], dataset='Census', year=2010)
FieldTable(['gender', 'rural_or_urban'], dataset='Census', year=2010)
