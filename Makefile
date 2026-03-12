APP_NAME=github-actions-pipeline-lab-gcp
IMAGE_NAME=$(APP_NAME)
PORT=8080

.PHONY: help install run test lint docker-build clean

help:
	@echo "Available commands:"
	@echo " make install       Install project dependencies"
	@echo " make run           Run the FastAPI application locally"
	@echo " make test          Run the test suite"
	@echo " make lint          Run code linting"
	@echo " make docker-build  Build Docker image"
	@echo " make clean         Remove cache and temporary files"

install:
	pip install --upgrade pip
	pip install -r requirements.txt

run:
	uvicorn app.main:app --reload --port $(PORT)

test:
	pytest -q

lint:
	ruff check .

docker-build:
	docker build -t $(IMAGE_NAME):local .

clean:
	rm -rf __pycache__
	rm -rf .pytest_cache
	rm -rf .ruff_cache