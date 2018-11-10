COMPOSE=docker-compose
DEVDOCKER=$(COMPOSE) run --rm web

build:
	$(COMPOSE) build

web:
	rm -fr static/*  # Workaround for whitenoise busyness in dev
	$(COMPOSE) up web

compilescss:
	$(COMPOSE) exec web ./manage.py compilescss
	rm -fr static/*
	$(COMPOSE) exec web ./manage.py collectstatic --noinput

dumpdata:
	$(COMPOSE) exec web python manage.py dumpdata wazimap hurumap ${HURUMAP_APP} -o ${HURUMAP_APP}/fixtures/${HURUMAP_APP}.json
