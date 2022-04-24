
PYTHON = $(shell which python3.9)

venv:
	$(PYTHON) -m venv venv

install:
	$(PYTHON) -m pip install -r requirements.txt

format:
	black rndsite/

lint:
	pylint --load-plugins pylint_django --django-settings-module=rndsite.settings rndsite/rndsite rndsite/basic

