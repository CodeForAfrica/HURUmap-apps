COMPOSE = docker-compose

build:
	$(COMPOSE) build

web:
	$(COMPOSE) up web

enter:
	$(COMPOSE) exec web bash

compilescss:
	$(COMPOSE) exec web python manage.py compilescss
	$(COMPOSE) exec web python manage.py collectstatic --clear --noinput

dumpdata:
	$(COMPOSE) exec web python manage.py dumpdata wazimap hurumap ${HURUMAP_APP} -o ${HURUMAP_APP}/fixtures/${HURUMAP_APP}.json

makemigrations:
	$(COMPOSE) exec web python manage.py makemigrations

createdb:
	$(COMPOSE) exec db createdb ${HURUMAP_APP}

loaddata:
	$(COMPOSE) exec -T web ./contrib/loaddata.sh  # Load the DB with data

release:
	./contrib/docker/release.sh

release-build:
	./contrib/docker/release-build.sh

