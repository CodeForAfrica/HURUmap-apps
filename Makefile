build:
	docker build -t codeforafrica/hurumap-apps:latest .

image-latest:
	docker build -t codeforafrica/hurumap-apps:latest .
	docker push codeforafrica/hurumap-apps:latest

# TODO: Pull from a VERSION file and connect to git flow release
image-release:
	docker build -t codeforafrica/hurumap-apps:0.1.0
	docker push codeforafrica/hurumap-apps:0.1.0

# Default
web:
	rm -fr static/*  # Workaround for whitenoise busyness in dev
	docker-compose up web

compilescss:
	docker-compose exec web ./manage.py compilescss
	rm -fr static/*
	docker-compose exec web ./manage.py collectstatic --noinput

# HURUmap Zambia
hurumap-zm:
	rm -fr static/*
	docker-compose up hurumap-zm

hurumap-zm-build:
	make build
	docker-comopse build hurumap-zm

# HURUmap Zimbabwe
hurumap-zw:
	rm -fr static/*
	docker-compose up hurumap-zw

hurumap-zm-build:
	make build
	docker-comopse build hurumap-zw
	