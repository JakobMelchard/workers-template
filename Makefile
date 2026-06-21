.ONESHELL:
ROOT := $(shell git rev-parse --show-toplevel 2>/dev/null || pwd)
PORT ?= 8787

.PHONY: dev validate deploy

default: dev

dev:
	cd $(ROOT)
	wrangler dev --port $(PORT)

validate:
	cd $(ROOT)
	wrangler deploy --dry-run

deploy:
	cd $(ROOT)
	wrangler deploy
