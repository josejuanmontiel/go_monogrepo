package main

import (
	"context"
	"fmt"
	"log"
	"time"

	"github.com/josejuanmontiel/go_monogrepo/packages/main_app/router"

	// Bazel
	// api "github.com/josejuanmontiel/go_monogrepo/packages/proto/api"
	// Go Modules...
	api "github.com/josejuanmontiel/go_monogrepo/packages/proto_build/proto/api"

	"google.golang.org/grpc"
)

const (
	address     = "localhost:8081"
	defaultName = "world"
)

func main() {
	fmt.Println("Run second application router")
	go router.GetEngine().Run(":8082")

	// Set up a connection to the server.
	conn, err := grpc.Dial(address, grpc.WithInsecure(), grpc.WithBlock())
	if err != nil {
		log.Fatalf("did not connect: %v", err)
	}
	defer conn.Close()
	c := api.NewPingClient(conn)

	ctx, cancel := context.WithTimeout(context.Background(), time.Second)
	defer cancel()
	r, err := c.SayHello(ctx, &api.PingMessage{})
	if err != nil {
		log.Fatalf("could not greet: %v", err)
	}
	log.Printf("Greeting: %s", r.GetGreeting())

}

func Check() {
	fmt.Println("Check")
}
