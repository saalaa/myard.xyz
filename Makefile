.PHONY: default build serve

default:
	@echo Available targets:
	@grep -E '^[\w]|:[ ]*#' Makefile | sed 's/^/\n/g' | sed 's/#/\n   /g'

build:  # Build the website into `docs/`
	hugo

serve:  # Serve locally on http://localhost:1313
	hugo serve --buildDrafts --buildFuture --disableFastRender --renderToMemory
