from hurumap.data.tables import FieldTable


# Define our tables so the data API can discover them.
FieldTable(['gender', 'age group'], table_per_level=False)
FieldTable(['gender', 'rural or urban'], table_per_level=False)

# FieldTable(['rural or urban', 'sex', 'age in completed years'], table_per_level=False)
# FieldTable(['employment activity status', 'sex'], universe='People aged 5 years and older', table_per_level=False)
# FieldTable(['school attendance', 'sex'], universe='People aged 3 years and older', table_per_level=False)
# FieldTable(['highest education level reached'], universe='People aged 3 years and older', table_per_level=False)
# FieldTable(['main mode of human waste disposal'], universe='Households', table_per_level=False)
# FieldTable(['main source of water'], universe='Households', table_per_level=False)
# FieldTable(['main type of lighting fuel'], universe='Households', table_per_level=False)
# FieldTable(['main type of floor material'], universe='Households', table_per_level=False)
# FieldTable(['main type of wall material'], universe='Households', table_per_level=False)
# FieldTable(['main type of roofing material'], universe='Households', table_per_level=False)
