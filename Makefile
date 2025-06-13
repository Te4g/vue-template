# Misc
.DEFAULT_GOAL = help
.PHONY        : *
%:
	@: ## Trick to avoid error when a target is not found when using `$(filter-out $@,$(MAKECMDGOALS))`

help:
	@grep -E '(^[a-zA-Z0-9\./_-]+:.*?##.*$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $1, $2}' | sed -e 's/\[32m##/[33m/'

## —— TulasVue ————————————————————————————————————————————————————————————————
start: ## Starts project in development mode
	@pnpm install
	@pnpm run dev
