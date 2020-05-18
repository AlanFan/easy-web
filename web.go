package main

import (
	"fmt"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "hello world........")
}

func main() {
	log.Print("hello web server ready")
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}
