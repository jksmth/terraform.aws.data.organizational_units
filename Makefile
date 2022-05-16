.DEFAULT_GOAL := help
SHELL = /bin/bash -o pipefail

.PHONY: help clean

help: ## display help message
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target> ...\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

venv ?= .venv
pip := $(venv)/bin/pip

$(pip): ## create venv using system python even when another venv is active
	@PATH=$${PATH#$${VIRTUAL_ENV}/bin:} python3 -m venv --clear $(venv)
	@$(pip) install --upgrade pip

$(venv): $(pip)
	@$(pip) install pre-commit~=2.19
	@touch $(venv)

clean: ## delete the pre-commit venv
	@rm -rf $(venv)

hooks: $(venv) ## run pre-commit git hooks on all files
	@$(venv)/bin/pre-commit run --show-diff-on-failure --all-files

install-hooks: $(venv) ## install pre-commit git hooks for repo
	@$(venv)/bin/pre-commit install -f --install-hooks
	@$(venv)/bin/pre-commit autoupdate

uninstall-hooks: $(venv) ## uninstall pre-commit git hooks for repo
	@$(venv)/bin/pre-commit clean
	@$(venv)/bin/pre-commit uninstall