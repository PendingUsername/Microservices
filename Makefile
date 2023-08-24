install:
	# Install commands
	pip install --upgrade pip &&\
	pip install -r requirements.txt

format:
	# Format code

lint:
	# Pylint

test:
	# Test

deploy:
	# Deploy

all: install lint test deploy
