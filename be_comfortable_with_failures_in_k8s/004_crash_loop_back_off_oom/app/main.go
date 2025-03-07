package main

import (
	"fmt"
	"net/http"
	"time"
)

var memoryEater [][]byte // Global variable to retain allocated memory

func allocateMemory() {
	fmt.Println("Allocating memory...")
	block := make([]byte, 200*1024*1024)     // 200Mi memory allocation
	memoryEater = append(memoryEater, block) // Store block so it's used
	time.Sleep(60 * time.Second)             // Keep running so OOMKilled happens
}

func healthHandler(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(http.StatusOK)
	w.Write([]byte("Healthy"))
}

func main() {
	fmt.Println("App is running on port 8080...")

	// Allocate memory immediately
	go allocateMemory()

	// Serve health check at /health
	http.HandleFunc("/health", healthHandler)

	// Start the server
	http.ListenAndServe(":8080", nil)
}
