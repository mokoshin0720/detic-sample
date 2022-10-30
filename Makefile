filename ?=

init:
	docker-compose build
	docker-compose up -d

run:
	docker-compose exec detic-sample python -B src/experiment/train.py

run-cmd:
	docker-compose exec detic-sample python -B ${filename}

down:
	docker-compose down

install:
	docker-compose exec detic-sample pip install -r requirements.txt