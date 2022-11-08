
install:
	# upgrade pip and install requirements
	 pip install --upgrade pip &&\
	 	pip install -r requirements.txt
lint: 
	# linting with pylint
	pylint --disable=R,C *.py
format:
	# format code with black
	black *.py
test:
	# test code with pytest
	python -m pytest -vv --cov=lib tests
	
# build:
# 	# build container
# 	docker build -t deploy-helloworld-microservice .
# run:
# 	# run docker
# 	docker run -p 127.0.0.1:8080:8080 3c46cadff8c4
# deploy: 
# 	# deploy code
# 	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 305781341404.dkr.ecr.us-east-1.amazonaws.com
# 	docker build -t wikimicroservice-donkeybrainz .
# 	docker tag wikimicroservice-donkeybrainz:latest 305781341404.dkr.ecr.us-east-1.amazonaws.com/wikimicroservice-donkeybrainz:latest
# 	docker push 305781341404.dkr.ecr.us-east-1.amazonaws.com/wikimicroservice-donkeybrainz:latest
# all: install lint format test deploy