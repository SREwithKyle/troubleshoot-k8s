package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("App is running normally...")

	for {
		fmt.Println("Still running...")
		time.Sleep(5 * time.Second) // Keep the app running
	}
}
