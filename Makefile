# ////////////////////////////////////////////////////
# Docker stuff

create-network:
	docker network create -d bridge hacking

up:
	docker-compose -f docker-compose.yml up #-d

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
# Other stuff

build-migrate:
	make -C migrate build


all: create-network up get-submodules prepare build-migrate