from wazimap.data.tables import FieldTable, SimpleTable

FieldTable(['private land ownership in hectares per category'],
 dataset='Land Audit Report 2017', universe='Private Land')
FieldTable(['number of private land owners by category'],
dataset='Land Audit Report 2017', universe='Private Land')
FieldTable(['land ownership in hectares by race'],
dataset='Land Audit Report 2017', universe='Private Land')
FieldTable(['number of land owners per race'],
dataset='Land Audit Report 2017', universe='Private Land')
FieldTable(['land ownership in hectares by gender'],
dataset='Land Audit Report 2017', universe='Private Land')
FieldTable(['number of land owners per gender'],
dataset='Land Audit Report 2017', universe='Private Land')
FieldTable(['land ownership in hectares by nationality'],
dataset='Land Audit Report 2017',  universe='Private Land')
FieldTable(['number of land owners per nationality'],
dataset='Land Audit Report 2017', universe='Private Land')
FieldTable(['erven land ownership in hectares by race'],
dataset='Land Audit Report 2017', universe='Erven Land')
FieldTable(['number of erven land owners per race'],
dataset='Land Audit Report 2017', universe='Erven Land')
FieldTable(['erven land ownership in hectares by gender'],
dataset='Land Audit Report 2017', universe='Erven Land')
FieldTable(['number of erven land owners per gender'],
dataset='Land Audit Report 2017', universe='Erven Land')
FieldTable(['erven land ownership in hectares by nationality'],
dataset='Land Audit Report 2017',  universe='Erven Land')
FieldTable(['number of erven land owners per nationality'],
dataset='Land Audit Report 2017',  universe='Erven Land')
FieldTable(['sectional title ownership in hectares per category'],
dataset='Land Audit Report 2017', universe='Sectional Title')
FieldTable(['number of sectional title owners by category'],
dataset='Land Audit Report 2017', universe='Sectional Title')
FieldTable(['sectional title ownership in hectares per race'],
dataset='Land Audit Report 2017', universe='Sectional Title')
FieldTable(['number of sectional title owners by race'],
dataset='Land Audit Report 2017', universe='Sectional Title')
FieldTable(['sectional title ownership in hectares per gender'],
dataset='Land Audit Report 2017', universe='Sectional Title')
FieldTable(['number of sectional title owners by gender'],
dataset='Land Audit Report 2017', universe='Sectional Title')
FieldTable(['sectional title ownership in hectares per nationality'],
dataset='Land Audit Report 2017', universe='Sectional Title')
FieldTable(['number of sectional title owners by nationality'],
dataset='Land Audit Report 2017', universe='Sectional Title')

#Redistribution Data
FieldTable(['redistributed land use breakdown'], universe='Land Redistribution',
dataset='Land Redistribution and Restitution Statistic 2018', year='2016')

FieldTable(['year', 'outcome of redistribution programme'], id='redistributionprogrammeoutcomebyyear',
universe='Land Redistribution', year='2016', dataset='Land Redistribution and Restitution Statistic 2018')

FieldTable(['year', 'party_benefited'], id='party_benefited', dataset='Land Redistribution and Restitution Statistic 2018',
universe='Land Redistribution', year='2016')

FieldTable(['restitutionoutcomestatistic',  'year'], id='restitutionoutcomestatistic',
universe='Land Restitution', year='2016', value_type='Float', has_total=False,
dataset='Land Redistribution and Restitution Statistic 2018')

FieldTable(['class'], id='landsalesdistributiontransaction', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)

FieldTable(['class'], id='landsalesdistributionlowestprice', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class'], id='landsalesdistributionhighestprice', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class'], id='landsalesdistributionaverageprice', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class'], id='landsalesdistributionpricetrends', dataset='Land Sales',
universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class'], id='landsalesdistributionaveragetrends', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class'], id='landsalesdistributionaveragepricejuly', dataset='Land Sales',
universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class'], id='landsalesdistributionhectares', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', has_total=False)

FieldTable(['town_name','class'], id='towndistrictdistributiontransactions', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)

FieldTable(['town_name', 'class'], id='towndistrictdistributionpricetrends', dataset='Land Sales',
universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)

FieldTable(['town_name','class'], id='towndistrictdistributionhectares', dataset='Land Sales',
universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)

FieldTable(['town_name', 'class'], id='towndistrictdistributionavgprice', dataset='Land Sales',
universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
# FieldTable(['town name', 'class (R/ha)', 'number_of_transactions',
# 'total hectares traded in 12 months', 'lowest price per hectares (R/ha) in 12 months',
#  'highest price per hectares (R/ha) in 12 months', 'average price per hectares (R/ha) in 12 months',
#  'price trends in 12 months','average trends in 12 months', 'average price in July 2918'],
#  id='landsalesdistrictdistribution', has_total=False)

# FieldTable(['year', 'hectares transferred per province by year'], id='hectarestransferredperprovincebyyear', universe='Land Restitution', year='2016')

SimpleTable(
    id='landsalesdistrictdistribution',
    description='Land Traded per class',
    total_column=None,
    universe='Agricultural Land Sales',
    dataset='Land Sales',
    year='2016'
)
# Simple tables
SimpleTable(
    id='redistributedlandcostinrands',
    universe='Land Redistribution',
    total_column=None,
    description='Total Cost in Rands (ZAR) for Redistributed Land in 2017/2018',
    dataset='Land Redistribution and Restitution Statistic 2018',
    year='2016'
)

SimpleTable(
    id='redistributedlandinhectares',
    universe='Land Redistribution',
    total_column=None,
    description='Redistributed Land Hectares in 2017/2018',
    dataset='Land Redistribution and Restitution Statistic 2018',
    year='2016'
)

SimpleTable(
    id='redistributedlandaveragecostperhectares',
    universe='Land Redistribution',
    total_column=None,
    description='Average Cost in Rands (ZAR) per Hectares for Redistributed Land in 2017/2018',
    dataset='Land Redistribution and Restitution Statistic 2018',
    year='2016'
)

SimpleTable(
    id='hectarestransferredperprovincebyyear',
    universe='Land Restitution',
    total_column='hectarestransferredperprovincebyyear',
    description='Hectares transferred Land Redistribution Programme',
    dataset='Land Redistribution and Restitution Statistic 2018',
    year='2016'
)
