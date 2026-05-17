.PHONY: deps lint test run

deps:
a	pip install -r requirements.txt; \
v	pip install -r test_requirements.txt

lint:
d	flake8 hello_world test
d
test:
d	PYTHONPATH=. py.test --verbose -s

run:
a	python main.py
