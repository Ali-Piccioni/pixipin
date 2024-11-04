SHELL=/bin/bash

ifndef VERBOSE
.SILENT:
endif

.PHONY: install
install: ## Install Pixipin on the local host.
	./install_from_git_checkout.sh

.PHONY: test
test: ## Run the test suite.
	./test.sh

.PHONY: check
check:  ## Run linters, checkers, etc..
	pre-commit run -a

.PHONY: help
help: ##xx Print this help message.
	echo ""
	echo "Usage: make <command>"
	echo ""
	echo "main commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-30s\033[0m %s\n", $$1, $$2}'
	echo ""
	echo "other commands:"
	@grep -E '^[a-zA-Z_-]+:.*?##xx .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?##xx "}; {printf "  \033[36m%-30s\033[0m %s\n", $$1, $$2}'
