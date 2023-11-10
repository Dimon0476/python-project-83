install:
	poetry install

build:
	poetry build

publish:
	poetry publish --dry-run

lint:
	poetry run flake8 page_analyzer

dev:
	poetry run flask --app page_analyzer:app run

PORT ?= 8000
start:
	poetry run waitress-serve -w 5 -b 0.0.0.0:$(PORT) page_analyzer:app

check:
	poetry check