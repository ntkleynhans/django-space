up:
	docker-compose up
down:
	docker-compose down

format:
	docker-compose run --rm rnd-web black $(FOLDER)

lint:
	docker-compose run --rm rnd-web pylint --load-plugins pylint_django --django-settings-module=rndsite.settings $(FOLDER)

build:
	docker-compose up

server:
	docker-compose run -p 127.0.0.1:8000:8000 --rm rnd-web python manage.py runserver 0.0.0.0:8000

celery:
	docker-compose run --rm rnd-celery celery -A rndsite worker -l info

shell:
	docker-compose run --rm rnd-web python manage.py shell -i ipython

dbshell:
	docker-compose run --rm rnd-web python manage.py dbshell

makemigrations:
	docker-compose run --rm rnd-web python manage.py makemigrations

migrate:
	docker-compose run --rm rnd-web python manage.py migrate

createsuperuser:
	docker-compose run --rm rnd-web python manage.py createsuperuser

