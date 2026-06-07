# =============================================================================
# Lakeor GitHub — Makefile
# =============================================================================

.DEFAULT_GOAL := help

VERSION := $(shell cat VERSION 2>/dev/null || echo 0.0.0)

.PHONY: help version lint check
help: ## Show this help message
	@awk 'BEGIN{FS=":.*##"; printf "\nLakeor GitHub  v$(VERSION)\n\nTargets:\n"} /^[a-zA-Z_-]+:.*##/{printf "  %-18s %s\n",$$1,$$2}' $(MAKEFILE_LIST)

version: ## Print VERSION
	@echo $(VERSION)

lint: ## Lint markdown + YAML
	@command -v markdownlint >/dev/null && markdownlint '**/*.md' || echo "markdownlint not installed"
	@command -v yamllint >/dev/null && yamllint . || echo "yamllint not installed"

check: lint ## Run all checks
