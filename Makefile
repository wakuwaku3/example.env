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

up-pubsub:
	make init
	docker-compose -f docker-compose-pubsub.yml up

up-tools:
	make init
	docker-compose -f docker-compose-tools.yml up

up-blazorserver:
	make init
	docker-compose -f docker-compose-blazorserver.yml up

up-tcp:
	make init
	docker-compose -f docker-compose-tcp.yml up

build:
	make init
	docker-compose up --build

build-db:
	make init
	docker-compose -f docker-compose-data.yml up  --build

build-vapid:
	make init
	docker-compose -f docker-compose-vapid.yml up  --build

build-pubsub:
	make init
	docker-compose -f docker-compose-pubsub.yml up  --build

build-tools:
	make init
	docker-compose -f docker-compose-tools.yml up  --build

build-blazorserver:
	make init
	docker-compose -f docker-compose-blazorserver.yml up  --build

build-tcp:
	make init
	docker-compose -f docker-compose-tcp.yml up  --build

down:
	docker-compose down

down-db:
	docker-compose -f docker-compose-data.yml down

down-vapid:
	docker-compose -f docker-compose-vapid.yml down

down-pubsub:
	docker-compose -f docker-compose-pubsub.yml down

down-tools:
	docker-compose -f docker-compose-tools.yml down

down-blazorserver:
	docker-compose -f docker-compose-blazorserver.yml down

down-tcp:
	docker-compose -f docker-compose-tcp.yml down
