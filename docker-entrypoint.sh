#!/bin/bash

# Check if HURUMAP_APP set, defaults to hurumap_land
[[ -z "${HURUMAP_APP}" ]] && HURUMAP_APP='hurumap_land' || HURUMAP_APP="${HURUMAP_APP}"
echo "HURUmap App: " $HURUMAP_APP

export DJANGO_SETTINGS_MODULE="${HURUMAP_APP}.settings"

createdb ${HURUMAP_APP}                        # Create DB
cat ${HURUMAP_APP}/sql/*.sql | psql            # Upload tables / data
python manage.py migrate --noinput             # Apply database migrations
python manage.py loaddata ${HURUMAP_APP}.json  # Load fixtures
python manage.py compilescss                   # Compile SCSS (offline)
python manage.py collectstatic --noinput       # Collect static files

# Prepare log files and start outputting logs to stdout
touch /src/logs/gunicorn.log
touch /src/logs/access.log
tail -n 0 -f /src/logs/*.log &

# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn --name ${HURUMAP_APP} \
    --bind 0.0.0.0:8000 \
    --worker-class gevent \
    --log-level=info \
    --log-file=/src/logs/gunicorn.log \
    --access-logfile=/src/logs/access.log \
    --reload \
    ${HURUMAP_APP}.wsgi:application
