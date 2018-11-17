COMPOSE = docker-compose
DEVDOCKER = $(COMPOSE) exec web

build:
	$(COMPOSE) build

web:
	rm -fr static/*  # Workaround for whitenoise busyness in dev
	$(COMPOSE) up web


enter:
	$(DEVDOCKER) bash

compilescss:
	$(DEVDOCKER) ./manage.py compilescss
	rm -fr static/*
	$(DEVDOCKER) ./manage.py collectstatic --noinput

dumpdata:
	$(DEVDOCKER) ./manage.py dumpdata wazimap hurumap ${HURUMAP_APP} -o ${HURUMAP_APP}/fixtures/${HURUMAP_APP}.json

makemigrations:
	$(DEVDOCKER) ./manage.py makemigrations
