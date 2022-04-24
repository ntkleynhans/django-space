
PYTHON = $(shell which python3.9)

venv:
	$(PYTHON) -m venv venv

install:
	$(PYTHON) -m pip install -r requirements.txt

