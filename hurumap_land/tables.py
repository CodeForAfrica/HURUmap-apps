from wazimap.data.tables import FieldTable, SimpleTable

FieldTable(['private land ownership in hectares per category'],
 dataset='Land Audit Report', universe='Private Land', year='2017')
FieldTable(['number of private land owners by category'],
dataset='Land Audit Report', universe='Private Land', year='2017')
FieldTable(['land ownership in hectares by race'],
dataset='Land Audit Report', universe='Private Land', year='2017')
FieldTable(['number of land owners per race'],
dataset='Land Audit Report', universe='Private Land', year='2017')
FieldTable(['land ownership in hectares by gender'],
dataset='Land Audit Report', universe='Private Land', year='2017')
FieldTable(['number of land owners per gender'],
dataset='Land Audit Report', universe='Private Land', year='2017')
FieldTable(['land ownership in hectares by nationality'],
dataset='Land Audit Report',  universe='Private Land', year='2017')
FieldTable(['number of land owners per nationality'],
dataset='Land Audit Report', universe='Private Land', year='2017')
FieldTable(['erven land ownership in hectares by race'],
dataset='Land Audit Report', universe='Erven Land', year='2017')
FieldTable(['number of erven land owners per race'],
dataset='Land Audit Report', universe='Erven Land', year='2017')
FieldTable(['erven land ownership in hectares by gender'],
dataset='Land Audit Report', universe='Erven Land', year='2017')
FieldTable(['number of erven land owners per gender'],
dataset='Land Audit Report', universe='Erven Land', year='2017')
FieldTable(['erven land ownership in hectares by nationality'],
dataset='Land Audit Report',  universe='Erven Land', year='2017')
FieldTable(['number of erven land owners per nationality'],
dataset='Land Audit Report',  universe='Erven Land', year='2017')
FieldTable(['sectional title ownership in hectares per category'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')
FieldTable(['number of sectional title owners by category'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')
FieldTable(['sectional title ownership in hectares per race'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')
FieldTable(['number of sectional title owners by race'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')
FieldTable(['sectional title ownership in hectares per gender'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')
FieldTable(['number of sectional title owners by gender'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')
FieldTable(['sectional title ownership in hectares per nationality'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')
FieldTable(['number of sectional title owners by nationality'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')

#Redistribution Data
FieldTable(['redistributed land use breakdown'], universe='Land Redistribution',
dataset='Land Redistribution and Restitution Statistic', year='2018')

FieldTable(['year', 'outcome of redistribution programme'], id='redistributionprogrammeoutcomebyyear',
universe='Land Redistribution', year='2018', dataset='Land Redistribution and Restitution Statistic')

FieldTable(['year', 'party_benefited'], id='party_benefited', dataset='Land Redistribution and Restitution Statistic',
universe='Land Redistribution', year='2018')

FieldTable(['restitutionoutcomestatistic',  'year'], id='restitutionoutcomestatistic',
universe='Land Restitution', year='2018', value_type='Float', has_total=False,
dataset='Land Redistribution and Restitution Statistic')

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

FieldTable(['land_breakdown', 'month'], id='landsalessummaryhectarestcolour', dataset='Land Sales',
  universe='Agricultural Land Sales', year='2016')

FieldTable(['land_breakdown', 'month'], id='landsalessummarycosttcolour', dataset='Land Sales',
  universe='Agricultural Land Sales', year='2016')

FieldTable(['land_breakdown', 'month'], id='landsalessummarypricetcolour', dataset='Land Sales',
   universe='Agricultural Land Sales', year='2016')

FieldTable(['land_breakdown', 'month'], id='landsalessummarytransactionscolour', dataset='Land Sales',
   universe='Agricultural Land Sales', year='2016')

FieldTable(['town_name','class'], id='towndistrictdistributiontransactions', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)

FieldTable(['town_name', 'class'], id='towndistrictdistributionpricetrends', dataset='Land Sales',
universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)

FieldTable(['town_name','class'], id='towndistrictdistributionhectares', dataset='Land Sales',
universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)

FieldTable(['town_name', 'class'], id='towndistrictdistributionavgprice', dataset='Land Sales',
universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)

FieldTable(['population group'], id='populationgroup_2016', year='2016', dataset='Census')

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
    dataset='Land Redistribution and Restitution Statistic',
    year='2018'
)

SimpleTable(
    id='redistributedlandinhectares',
    universe='Land Redistribution',
    total_column=None,
    description='Redistributed Land Hectares in 2017/2018',
    dataset='Land Redistribution and Restitution Statistic',
    year='2018'
)

SimpleTable(
    id='redistributedlandaveragecostperhectares',
    universe='Land Redistribution',
    total_column=None,
    description='Average Cost in Rands (ZAR) per Hectares for Redistributed Land in 2017/2018',
    dataset='Land Redistribution and Restitution Statistic',
    year='2018'
)

SimpleTable(
    id='hectarestransferredperprovincebyyear',
    universe='Land Restitution',
    total_column='hectarestransferredperprovincebyyear',
    description='Hectares transferred Land Redistribution Programme',
    dataset='Land Redistribution and Restitution Statistic',
    year='2018'
)

FieldTable(['land_ownership_by_gender'], id='privatelanddistributionbygender', dataset='Land Audit Report', year=2013)
FieldTable(['land_use'], id='landuse', dataset='Land Audit Report', year=2013)
FieldTable(['land_user'], id='landuser', dataset='Land Audit Report', year=2013)
FieldTable(['private_vs_state_ownership'], id='landownership', dataset='Land Audit Report', year=2013)

FieldTable(['access_to_information'], universe='Land in South Africa',
           year='2017', dataset='Afrobarometer Survey')

FieldTable(['allow_farmers_retain_land_ownership'],
           universe='Land in South Africa', year='2017',
           dataset='Afrobarometer Survey')

FieldTable(['maintain_willing_buyer_willing_seller_policy'],
           universe='Land in South Africa', year='2017',
           dataset='Afrobarometer Survey')

FieldTable(['land_acquisation_challenges'], universe='Land in South Africa',
           year='2017', dataset='Afrobarometer Survey')

FieldTable(['land_to_prioritise_for_redistribution'],
           universe='Land in South Africa', year='2017',
           dataset='Afrobarometer Survey')

# FieldTable(['women_have_equal_right_to_land'], universe='Land in South Africa',
#            year='2017', dataset='Afrobarometer Survey')
#
# FieldTable(['women_men_equal_chance_own_land'], universe='Land in South Africa',
#            year='2017', dataset='Afrobarometer Survey')



