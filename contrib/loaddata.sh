#!/bin/bash

if [ -z ${HURUMAP_APP+x} ]; then HURUMAP_APP='hurumap_land'; fi

cat ${HURUMAP_APP}/sql/*.sql | psql            # Load tables / data into DB (TBD)
python manage.py loaddata ${HURUMAP_APP}/fixtures/${HURUMAP_APP}.json  # Load fixtures

