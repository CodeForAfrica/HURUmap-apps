HURUmap Sites
=============

These are the [HURUmap](https://hurumap.org) sites being managed and deployed by the Code for Africa teams.


## Installation

?

## Deployment

When deploying with dokku set the `DJANGO_SETTINGS_MODULE` in the following way:

    dokku config:set hurumap-ke DJANGO_SETTINGS_MODULE=hurumap_ke.settings


### Development

* clone this repo
* install dependencies:

    pip install -r requirements.txt

* run the server
    
    python manage.py collectstatic
    python manage.py runserver

### Test

?

---

## License

MIT 
