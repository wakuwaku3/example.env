SHELL=bash

initn:
	docker network create example-env-network

init:
	@envsubst < ./.env.template > .env
	@cat .env

up:
	make init
	docker-compose up

up-db:
	make init
	docker-compose -f docker-compose-data.yml up

up-vapid:
	make init
	docker-compose -f docker-compose-vapid.yml up

build:
	make init
	docker-compose up --build

build-db:
	make init
	docker-compose -f docker-compose-data.yml up  --build

build-vapid:
	make init
	docker-compose -f docker-compose-vapid.yml up  --build

down:
	docker-compose down

down-db:
	docker-compose -f docker-compose-data.yml down

down-vapid:
	docker-compose -f docker-compose-vapid.yml down
