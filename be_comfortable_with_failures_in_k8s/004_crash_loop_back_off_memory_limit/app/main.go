package main

import (
	"fmt"
	"net/http"
)

func healthHandler(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(http.StatusOK)
	w.Write([]byte("Healthy"))
}

func main() {
	fmt.Println("App is running on port 8080...")

	// Serve the correct health check at /health
	http.HandleFunc("/health", healthHandler)

	// Start the HTTP server
	http.ListenAndServe(":8080", nil)
}
