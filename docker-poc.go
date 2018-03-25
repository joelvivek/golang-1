package main

import (
	"fmt"
	"net/http"
	"os"
)

func ping(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "pong")
}

func hello(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World")
}

func fetchPort() string {
	p := os.Getenv("PORT")
	if p == "" {
		p = "8090"
	}
	return p
}
func main() {
	port := fetchPort()
	http.HandleFunc("/", ping)
	http.HandleFunc("/hello", hello)
	fmt.Println("service start at :", port)
	http.ListenAndServe(":"+port, nil)

}
