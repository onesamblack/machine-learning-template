.PHONY: clean clean-test clean-pyc clean-build venv test

PEX := pex
VIRTUALENV := python3 -m venv
PIP := venv/bin/pip


clean: clean-build clean-pyc clean-test 

clean-build: ## remove build artifacts
	rm -fr build/
	rm -fr dist/
	rm -fr .eggs/
	find . -name '*.egg-info' -exec rm -fr {} +
	find . -name '*.egg' -exec rm -f {} +

clean-pyc: ## remove Python file artifacts
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

clean-test: ## remove test and coverage artifacts
	rm -fr .tox/
	rm -f .coverage
	rm -fr htmlcov/
	rm -fr .pytest_cache


test: ## run tests quickly with the default Python
	pytest test/


install: clean ## install the package to the active Python's site-packages
	$(PIP) install -r requirements.txt


venv:
	$(VIRTUALENV) venv
	$(PIP) install -r requirements.txt
	$(PIP) install -e .

