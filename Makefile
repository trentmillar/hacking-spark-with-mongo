SHELL := /bin/bash

# ////////////////////////////////////////////////////
# MacOS stuff

install-spark:
	brew install scala
	brew install apache-spark

run-spark:
	 spark-shell

# ////////////////////////////////////////////////////
# Docker stuff

create-network:
	docker network create -d bridge hacking || (echo "exit code, $$?"; exit 0)

up:
	docker-compose -f docker-compose.yml up -d

down:
	docker-compose -f docker-compose.yml down

# ////////////////////////////////////////////////////
# Git stuff

get-submodules:
	rm -rf migrate
	git submodule update --remote

# ////////////////////////////////////////////////////
# Py stuff

prepare:
	pip3 install --upgrade -r requirements.txt

# ////////////////////////////////////////////////////
# Migration stuff

build-migrate:
	make -C migrate build

migrate-up:
	migrate/dist/mongodb_migration up "mongodb://localhost:27017/hacking" file://./migrations

migrate-down:
	migrate/dist/mongodb_migration down "mongodb://localhost:27017/hacking" file://./migrations

# ////////////////////////////////////////////////////
# Rollups

create: create-network up get-submodules prepare build-migrate migrate-up
destroy: down
