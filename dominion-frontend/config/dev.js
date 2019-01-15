module.exports = {
    API_URI: "http://localhost:8000/",
    MAPIT_URI: "https://mapit.code4sa.org",
    generation: {
        '2011': '1',
        '2016': '2',
        None: '2',  //TODO: this should be based on the default_geo_version wazimap setting
    },
    level_codes: {
        'ward': 'WD',
        'municipality': 'MN',
        'district': 'DC',
        'province': 'PR',
        'country': 'CY',
    },
    level_simplicity: {
        'DC': 0.01,
        'PR': 0.005,
        'MN': 0.005,
        'WD': 0.0001,
    }

  }