default:
  just --list

## tidy: Tidy modfiles, format and lint .go files
tidy:
	go mod tidy -v
	go fmt ./...
	gofmt -s -w .

## test: Test the Go modules within this package
test:
	go test -v ./...

## dev: Run the application
dev:
	go run cmd/main.go
