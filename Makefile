SHELL=bash

initn:
	docker network create example-env-network

init:
	@envsubst < ./.env.template > .env
	@cat .env

up:
	make init
	docker-compose up -d

up-db:
	make init
	docker-compose -f docker-compose-data.yml up -d

up-vapid:
	make init
	docker-compose -f docker-compose-vapid.yml up -d

up-pubsub:
	make init
	docker-compose -f docker-compose-pubsub.yml up -d

up-tools:
	make init
	docker-compose -f docker-compose-tools.yml up -d

up-blazorserver:
	make init
	docker-compose -f docker-compose-blazorserver.yml -d

up-tcp:
	make init
	docker-compose -f docker-compose-tcp.yml up -d

build:
	make init
	docker-compose up --build -d

build-db:
	make init
	docker-compose -f docker-compose-data.yml up  --build -d

build-vapid:
	make init
	docker-compose -f docker-compose-vapid.yml up  --build -d

build-pubsub:
	make init
	docker-compose -f docker-compose-pubsub.yml up  --build -d

build-tools:
	make init
	docker-compose -f docker-compose-tools.yml up  --build -d

build-blazorserver:
	make init
	docker-compose -f docker-compose-blazorserver.yml up  --build -d

build-tcp:
	make init
	docker-compose -f docker-compose-tcp.yml up  --build -d

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
