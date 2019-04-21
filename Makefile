.DEFAULT_GOAL:=help
SHELL:=/bin/bash

##@ Tools

.PHONY: init build run runstats
# phony is used to make sure theres no similar file such as <target> that cause the make recipie not to work

init: 										## ensure local environment is setup
	@echo ":: ensure environment dependancies are setup ::"
	@prinf "semver - "
	@command -v semver

build:										## build project
	@echo ":: build project ::"

run:											## run tinwolf in tt++
	@echo ":: run tinwolf ::"
	@echo ":: run #end to exit from tintin++ ::"
	sh tinwolf.sh

runstats:									## run stats/map in terminal
	@echo ":: run  ::"

##@ Helpers

.PHONY: version vpatch vminor vmajor help

version: 									## show current version
	@git describe --tags --abbrev=0

vinit: 										## initialise first version
	@git tag 0.1.0

vpatch: 									## show bumped version + patch (fix)
	@semver $$(git describe --tags --abbrev=0) -i patch

vminor: 									## show bumped version + minor (non breaking)
	@semver $$(git describe --tags --abbrev=0) -i minor

vmajor: 									## show bumped version + major (breaking)
	@semver $$(git describe --tags --abbrev=0) -i major

help:  										## display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
	@printf "\n"
