install:
	pip install -r requirements.txt 
freeze:
	pip freeze > requirements.txt
format:
	black *.py mylib/*.py
lint:
	pylint --disable=R,C *.py mylib/*.py
test:
	#test
	python -m pytest -vv --cov=mylib --cov=main test_*.py
deploy:
	#deploy 
all: install lint test deploy