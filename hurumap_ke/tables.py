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
