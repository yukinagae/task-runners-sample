default:
  just --list

# Tidy modfiles, format and lint .go files
tidy:
	go mod tidy -v
	go fmt ./...
	gofmt -s -w .

# Test the Go modules within this package
test:
	go test -v ./...

# Run the application
dev:
	go run cmd/main.go
