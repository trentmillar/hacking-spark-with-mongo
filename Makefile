# ////////////////////////////////////////////////////
# Docker stuff

create-network:
	docker network create -d bridge hacking

up:
	docker-compose -f docker-compose.yml up #-d

down:
	docker-compose -f docker-compose.yml down

# ////////////////////////////////////////////////////
# Pip stuff

prepare:
	pip3 install --upgrade -r requirements.txt
