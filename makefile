.PHONY: help
help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: mac
mac: ## Sync config for Mac
	./install-profile mac

.PHONY: linux
linux: ## Sync config for Linux
	./install-profile linux

.PHONY: windows
windows: ## Sync config for Windows
	./install-profile windows
