install:
	# Install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	# Format code
	black *.py mylib/*.py

lint:
	# Pylint
	pylint --disable=R,C *.py mylib/*.py

test:
	# Test
	python -m pytest -vv  --cov=mylib --cov=main test_*.py
build:
	#build container
	docker build -t deploy-fastapi .
run:
	#run docker
	#docker run -p 127.0.0.1:8000:8080 eb46e6a06735

deploy:
	# Deploy

all: install lint test deploy
