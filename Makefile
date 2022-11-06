filename ?=
env ?=

init:
	docker-compose -f docker-compose.${env}.yml build
	docker-compose -f docker-compose.${env}.yml up -d

run:
	docker-compose -f docker-compose.${env}.yml exec detic-sample python -B ${filename}

down:
	docker-compose -f docker-compose.${env}.yml down

install:
	docker-compose -f docker-compose.${env}.yml exec detic-sample pip install -r requirements.txt