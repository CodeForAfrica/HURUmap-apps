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
