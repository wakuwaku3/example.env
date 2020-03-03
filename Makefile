SHELL=bash

init:
	@envsubst < ./.env.template > .env
	@cat .env

up:
	make init
	docker-compose up

build:
	make init
	docker-compose up --build

down:
	docker-compose down
