package main

import (
	"fmt"
	"log"
	"os"

	"github.com/baubbletump/maia-migrator/internal/migrate"
)

func main() {
	connStr := fmt.Sprintf(
		"host=%s user=%s password=%s dbname=%s sslmode=disable",
		os.Getenv("DB_HOST"),
		os.Getenv("DB_USER"),
		os.Getenv("DB_PASSWORD"),
		os.Getenv("DB_NAME"),
	)

	err := migrate.Migrate(connStr)

	if err != nil {
		log.Fatal(err)
	}

	fmt.Println("Migrate is Done!")
}
