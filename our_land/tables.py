from wazimap.data.tables import FieldTable, SimpleTable

FieldTable(['private land ownership in hectares per category'], universe='Private Land')
FieldTable(['number of private land owners by category'], universe='Private Land')
FieldTable(['land ownership in hectares by race'], universe='Private Land')
FieldTable(['number of land owners per race'], universe='Private Land')
FieldTable(['land ownership in hectares by gender'], universe='Private Land')
FieldTable(['number of land owners per gender'], universe='Private Land')
FieldTable(['land ownership in hectares by nationality'], universe='Private Land')
FieldTable(['number of land owners per nationality'], universe='Private Land')
FieldTable(['erven land ownership in hectares by race'], universe='Erven Land')
FieldTable(['number of erven land owners per race'], universe='Erven Land')
FieldTable(['erven land ownership in hectares by gender'], universe='Erven Land')
FieldTable(['number of erven land owners per gender'], universe='Erven Land')
FieldTable(['erven land ownership in hectares by nationality'], universe='Erven Land')
FieldTable(['number of erven land owners per nationality'], universe='Erven Land')
FieldTable(['sectional title ownership in hectares per category'], universe='Sectional Title')
FieldTable(['number of sectional title owners by category'], universe='Sectional Title')
FieldTable(['sectional title ownership in hectares per race'], universe='Sectional Title')
FieldTable(['number of sectional title owners by race'], universe='Sectional Title')
FieldTable(['sectional title ownership in hectares per gender'], universe='Sectional Title')
FieldTable(['number of sectional title owners by gender'], universe='Sectional Title')
FieldTable(['sectional title ownership in hectares per nationality'], universe='Sectional Title')
FieldTable(['number of sectional title owners by nationality'], universe='Sectional Title')

#Redistribution Data
FieldTable(['redistributed land use breakdown'], universe='Land Redistribution', year='2016')
FieldTable(['year', 'outcome of redistribution programme'], id='redistributionprogrammeoutcomebyyear', universe='Land Redistribution', year='2016')
FieldTable(['year', 'party_benefited'], id='party_benefited', universe='Land Redistribution', year='2016')
FieldTable(['restitutionoutcomestatistic',  'year'], id='restitutionoutcomestatistic', universe='Land Restitution', year='2016', value_type='Float', has_total=False)
FieldTable(['class'], id='landsalesdistributiontransaction', universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class'], id='landsalesdistributionlowestprice', universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class'], id='landsalesdistributionhighestprice', universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class'], id='landsalesdistributionaverageprice', universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class'], id='landsalesdistributionpricetrends', universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class'], id='landsalesdistributionaveragetrends', universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class'], id='landsalesdistributionaveragepricejuly', universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class'], id='landsalesdistributionhectares', universe='Agricultural Land Sales', year='2016', has_total=False)
# FieldTable(['year', 'hectares transferred per province by year'], id='hectarestransferredperprovincebyyear', universe='Land Restitution', year='2016')

# Simple tables
SimpleTable(
    id='redistributedlandcostinrands',
    universe='Land Redistribution',
    total_column=None,
    description='Total Cost in Rands (ZAR) for Redistributed Land in 2017/2018',
    dataset='',
    year='2016'
)

SimpleTable(
    id='redistributedlandinhectares',
    universe='Land Redistribution',
    total_column=None,
    description='Redistributed Land Hectares in 2017/2018',
    dataset='',
    year='2016'
)

SimpleTable(
    id='redistributedlandaveragecostperhectares',
    universe='Land Redistribution',
    total_column=None,
    description='Average Cost in Rands (ZAR) per Hectares for Redistributed Land in 2017/2018',
    dataset='',
    year='2016'
)

SimpleTable(
    id='hectarestransferredperprovincebyyear',
    universe='Land Restitution',
    total_column='hectarestransferredperprovincebyyear',
    description='Hectares transferred Land Redistribution Programme',
    dataset='',
    year='2016'
)
# SimpleTable(
#     id='restitutionoutcomestatistic',
#     universe='Land Restitution',
#     description='Hectares Acquired in the Land Restitution Programme',
#     dataset='',
#     year='2016'
# )

SimpleTable(
    id='landsalesdistribution',
    universe='Agricultural Land Sales',
    total_column='number of transactions in 12 months',
    description='Land Sales Distribution August 2017 to July 2018 ',
    dataset='',
    year='2016'
)
