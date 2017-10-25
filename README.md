HURUmap
=======

[HURUmap](https://hurumap.org) gives infomediaries like journalists and civic activists an easy ‘plug & play’ toolkit for finding and embedding interactive data visualisations into their storytelling.

The project is built on Wazimap, an open source platform by OpenUp and Media Monitoring Africa for making census data more understandable.


## Installation

?

## Deployment

When deploying with dokku set the `DJANGO_SETTINGS_MODULE` in the following way:

    dokku config:set hurumap-ke DJANGO_SETTINGS_MODULE=hurumap_ke.settings


### Checks

Dokku allows for checks that make sure you have [zero-downtime deployments](http://dokku.viewdocs.io/dokku/deployment/zero-downtime-deploys/). We currently only check for DB errors but should allow for better checks in the future.

### Development

* clone this repo
* install dependencies:

    pip install -r requirements.txt

* run the server
    
    python manage.py collectstatic
    python manage.py runserver

### Tests

?

---

## License

MIT 
