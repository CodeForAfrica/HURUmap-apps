build:
	docker-compose build

web:
	rm -fr static/*  # Workaround for whitenoise busyness in dev
	docker-compose up web

compilescss:
	docker-compose exec web ./manage.py compilescss
	rm -fr static/*
	docker-compose exec web ./manage.py collectstatic --noinput
	