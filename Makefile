install:
	# Install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt

post-install:
	python -m textblob.download_corpora

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
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 453981299687.dkr.ecr.us-east-1.amazonaws.com
	docker build -t fastapiwiki .
	docker tag fastapiwiki:latest 453981299687.dkr.ecr.us-east-1.amazonaws.com/fastapiwiki:latest
	docker push 453981299687.dkr.ecr.us-east-1.amazonaws.com/fastapiwiki:latest

all: install post-install install lint test deploy
