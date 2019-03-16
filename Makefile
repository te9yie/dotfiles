EXCLUDES := .git
TARGET := $(wildcard .??*)
DOTFILES := $(filter-out $(EXCLUDES), $(TARGET))

.DEFAULT_GOAL := help

.PHONY: install
install: init deploy ## Initialize and deploy dotfiles.

.PHONY: init
init: ## Initialize.
	@$(foreach file, $(wildcard ./etc/init/*.sh), bash $(file);)

.PHONY: deploy
deploy: ## Deploy dotfiles.
	@$(foreach file, $(DOTFILES), ln -sfnv $(abspath $(file)) $(HOME)/$(file);)

.PHONY: help
help:
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "%-16s %s\n", $$1, $$2}'
