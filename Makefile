# Default target: print this help message
.PHONY: help
.DEFAULT_GOAL := help
help:
	@echo 'Usage:'
	@echo '  make <target>'
	@echo ''
	@echo 'Targets:'
	@sed -n 's/^##//p' $(MAKEFILE_LIST) | column -t -s ':' | sed -e 's/^/  /'

## tidy: Tidy modfiles, format and lint .go files
.PHONY: tidy
tidy:
	go mod tidy -v
	go fmt ./...
	gofmt -s -w .

## test: Test the Go modules within this package
.PHONY: test
test:
	go test -v ./...

## dev: Run the application
.PHONY: dev
dev:
	go run cmd/main.go
