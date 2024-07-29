.PHONY: build-dev build-prod start stop reset

build-dev:
	rm -f docker/openjdk17/Dockerfile
	rm -f docker-compose.yml
	cp docker/openjdk17/Dockerfile.dev docker/openjdk17/Dockerfile
	cp docker-compose.dev.yml docker-compose.yml
	docker-compose build --no-cache
	docker-compose up -d

build-prod:
	rm -f docker/openjdk17/Dockerfile
	rm -f docker-compose.yml
	cp docker/openjdk17/Dockerfile.prod docker/openjdk17/Dockerfile
	cp docker-compose.prod.yml docker-compose.yml
	docker-compose build --no-cache
	docker-compose up -d

start:
	find . -type f -name '._*' -delete
	docker start $$(docker ps -a -q)

stop:
	find . -type f -name '._*' -delete
	docker stop $$(docker ps -a -q)

reset:
	find . -type f -name '._*' -delete
	docker stop $$(docker ps -a -q)
	docker rm $$(docker ps -a -q)
	docker rmi afirhan/servicebase
	docker network rm servicebase-network