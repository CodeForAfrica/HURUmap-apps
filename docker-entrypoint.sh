#!/bin/bash
python manage.py migrate --noinput        # Apply database migrations
cat our_land/sql/*.sql | psql              # Upload tables / data
python manage.py compilescss              # Compile SCSS (offline)
python manage.py collectstatic --noinput  # Collect static files

# Prepare log files and start outputting logs to stdout
touch /src/logs/gunicorn.log
touch /src/logs/access.log
tail -n 0 -f /src/logs/*.log &

# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn --name ${HURUMAP_APP_NAME} \
    --bind 0.0.0.0:8000 \
    --workers 3 \
    --log-level=info \
    --log-file=/src/logs/gunicorn.log \
    --access-logfile=/src/logs/access.log \
    --reload \
    ${HURUMAP_APP_NAME}.wsgi:application 
