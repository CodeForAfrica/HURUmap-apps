import os
from collections import OrderedDict
from distutils.util import strtobool

import dj_database_url
from hurumap.dashboard.settings import *  # noqa

# insert our overrides before both census and hurumap
INSTALLED_APPS = ["hurumap_ng"] + INSTALLED_APPS

MIDDLEWARE_CLASSES = (
    "whitenoise.middleware.WhiteNoiseMiddleware",
) + MIDDLEWARE_CLASSES

DATABASE_URL = os.environ.get(
    "DATABASE_URL", "postgresql://hurumap:hurumap@localhost/hurumap_ng"
)
DATABASES["default"] = dj_database_url.parse(DATABASE_URL)
DATABASES["default"]["ATOMIC_REQUESTS"] = True

# Localise this instance of HURUmap
HURUMAP["name"] = "HURUmap Nigeria"
HURUMAP["url"] = "https://nigeria.hurumap.org"

HURUMAP[
    "title_tagline"
] = "HURUmap Nigeria helps storytellers and campaigners use data to add context and depth to stories"

HURUMAP["twitter"] = "@nigerianstat"
HURUMAP["facebook"] = "nigerianstatistics"

HURUMAP["ga_tracking_id"] = "UA-44795600-49"

HURUMAP["country_code"] = "NG"
HURUMAP["country_name"] = "Nigeria"
HURUMAP["country_profile"] = "country-NG-nigeria"
HURUMAP["profile_builder"] = "hurumap_ng.profiles.get_profile"
HURUMAP["default_geo_version"] = os.environ.get("DEFAULT_GEO_VERSION", "2016")
HURUMAP["legacy_embed_geo_version"] = "2016"
HURUMAP["levels"] = {
    "country": {"plural": "countries", "children": ["state"]},
    "state": {"plural": "states"},
}
HURUMAP["comparative_levels"] = ["country", "state"]

HURUMAP["USE_MAPIT"] = True
# use mapit settings
HURUMAP["geometry_data"] = {}
HURUMAP["mapit"] = {
    "url": "https://mapit.hurumap.org",
    "country_code": "NG",
    "generations": {
        "2016": "1",
        None: "1",
        # this should be based on the default_geo_version wazimap setting
    },
    "code_type": "HDX",
    "level_simplify": {"country": 0, "province": 0},
    "map_country": {"centre": [9.0820, 8.6753], "zoom": 6},
}

HURUMAP["map_centre"] = [9.0820, 8.6753]
HURUMAP["map_zoom"] = 6

# -------------------------------------------------------------------------------------
# Showcase Stories

HURUMAP["showcase_stories"] = [
    {
        "title": "Prices of food stuff increases in April — NBS",
        "author": "NAN",
        "brief": "The National Bureau of Statistics (NBS), said the average price of some selected food items in the country increased in April.",
        "link": "//guardian.ng/news/prices-of-food-stuff-increases-in-april-nbs",
        "img": STATIC_URL + "img/showcase/nbs.png",
    },
    {
        "title": "Price of cooking gas drops in April — NBS",
        "author": "News Agency Of Nigeria",
        "brief": "The National Bureau of Statistics (NBS), said the average cost of refilling a five kilogramme (kg) cylinder of Liquefied Petroleum Gas (Cooking Gas) dropped to N2,046.53 in April from N2,064.45 recorded in March.",
        "link": "//www.pulse.ng/news/local/price-of-cooking-gas-drops-in-april-nbs/vtn2mf3",
        "img": STATIC_URL + "img/showcase/gas.jpg",
    },
    {
        "title": "Nigeria’s GDP Increases as Non-oil Sector Grows by 0.41%",
        "author": "The Eagle Online",
        "brief": "The National Bureau of Statistics said Nigeria’s Gross Domestic Product recorded a positive growth as the non-oil sector grew in real terms by 0.41 per cent in first quarter of 2019.",
        "link": "//nipc.gov.ng/2019/05/22/nigerias-gdp-increases-as-non-oil-sector-grows-by-0-41/",
        "img": STATIC_URL + "img/showcase/nbs.png",
    },
]

# -------------------------------------------------------------------------------------
# Releases

HURUMAP["primary_release_year"] = {}
HURUMAP["latest_release_year"] = "2018"
HURUMAP["primary_dataset_name"] = "National Bureau of Statistics"
HURUMAP["available_release_years"] = {"county": [2018, 2016], "state": [2018, 2016]}

# -------------------------------------------------------------------------------------
# Profile Sections
HURUMAP['topics'] = {'demographics', 'education', 'health', 'crime', 'drugs', 'agriculture', 'others', 'finance'}

LOGGING["loggers"]["hurumap_ng"] = {"level": "DEBUG" if DEBUG else "INFO"}

# URLS
ROOT_URLCONF = "hurumap_ng.urls"

# Making sure they are the same
WAZIMAP = HURUMAP
