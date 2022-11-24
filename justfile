# putup --force --pre-commit -l propriety data-cfpb
# pre-commit autoupdate
# pre-commit install


venv dev_deploy:
	#!/usr/bin/env bash
	pipx install pip-tools
	pip-compile requirements-{{dev_deploy}}.in
	python3 -m venv .venv_{{dev_deploy}}_data-cfpb
	. .venv_{{dev_deploy}}_data-cfpb/bin/activate
	python3 -m pip install --upgrade pip
	pip install -r requirements-{{dev_deploy}}.txt
	python -m ipykernel install --user --name .venv_{{dev_deploy}}_data-cfpb
	pip install -U prefect
	echo -e '\n' source .venv_{{dev_deploy}}_data-cfpb/bin/activate '\n'