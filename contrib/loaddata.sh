#!/bin/bash

if [ -z ${HURUMAP_APP+x} ]; then HURUMAP_APP='hurumap_land'; fi

cat ${HURUMAP_APP}/sql/*.sql | psql            # Load tables / data into DB (TBD)
python manage.py loaddata ${HURUMAP_APP}/fixtures/${HURUMAP_APP}.json  # Load fixtures

# load universityfinder data if elimu_yangu
if [${HURUMAP_APP} == "elimu_yangu"]; then
    python manage.py migrate # migrate the elimu yangu tables
    python manage.py loaddata elimu_yangu/fixtures/universityfinder.json;
fi
