from wazimap.data.tables import FieldTable

# Define our tables so the data API can discover them.
FieldTable(['gender', 'age group'], dataset='Census', year=2010)
FieldTable(['gender', 'rural or urban'], dataset='Census', year=2010)

