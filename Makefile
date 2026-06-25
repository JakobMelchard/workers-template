.ONESHELL:
MAKEFLAGS += --silent
PORT ?= 8787

.PHONY: dev validate deploy

default: dev

dev:
	wrangler dev --port $(PORT)

validate:
	wrangler deploy --dry-run

deploy:
	wrangler deploy
