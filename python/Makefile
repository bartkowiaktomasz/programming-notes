# Install Dev requirements (Dev tools + other requirements)
.PHONY: install
install:
	python -m pip install --upgrade pip
	pip install -r requirements_dev.txt

# Format the code
.PHONY: format
format:
	pre-commit run --all-files
	python -m black ./src/

# Lint the code
.PHONY: lint
lint:
	python -m pylint ./src/ --ignore=tests --disable=unnecessary-pass --rcfile .pylintrc
	python -m pylint ./src/tests --disable=missing-docstring,missing-function-docstring,invalid-name,no-self-use,redefined-outer-name,too-many-public-methods,duplicate-code,too-many-lines --rcfile .pylintrc

# Convenient helper - format and lint the code
.PHONY: flint
flint: format lint

# Run unit tests
.PHONY: test
test:
	export PYTHONPATH="${PYTHONPATH}:./src" && python -m pytest --cov=./src/tests/
