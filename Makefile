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
build:
	#build container
	
deploy:
	# Deploy

all: install lint test deploy
