.PHONY: run build

run:
	go run ./cmd/migrator/main.go

build:
	go build -o migrator ./cmd/migrator/main.go