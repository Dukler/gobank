# loading env file
ifneq (,$(wildcard ./.env))
    include .env
    export
endif

build:
	@go build -o bin/gobank

run: export JWT_SECRET=$(SECRET)
run: build
	@./bin/gobank

test:
	@go test -v ./...