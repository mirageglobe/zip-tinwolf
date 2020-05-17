.DEFAULT_GOAL:=help
SHELL:=/bin/bash

##@ Tools

.PHONY: init tinwolf
# phony is used to make sure theres no similar file such as <target> that cause the make recipie not to work

init: 										## ensure local environment is setup
	@echo ":: ensure environment dependancies are setup ::"
	@prinf "semver - "
	@command -v semver

tinwolf:									## start tinwolf
	@echo ":: run tinwolf ::"
	@echo ":: run #end to exit from tintin++ ::"
	sh tinwolf.sh

##@ Helpers

.PHONY: help

help:  										## display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
	@printf "\n"
