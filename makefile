format:
	docker-compose run --rm rnd-web black $(FOLDER)

lint:
	docker-compose run --rm rnd-web pylint --load-plugins pylint_django --django-settings-module=rndsite.settings $(FOLDER)

build:
	docker-compose up

server:
	docker-compose run --rm rnd-web python manage.py runserver
