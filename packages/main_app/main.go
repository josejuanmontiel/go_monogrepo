package main

import (
	"context"
	"fmt"
	"log"
	"net"

	grpc_api "github.com/josejuanmontiel/go_monogrepo/packages/main_app/grpc_api"
	"github.com/josejuanmontiel/go_monogrepo/packages/main_app/router"

	// Bazel
	// api "github.com/josejuanmontiel/go_monogrepo/packages/proto/api"
	// Go Modules...
	api "github.com/josejuanmontiel/go_monogrepo/packages/proto_build/proto/api"

	"google.golang.org/grpc"
)

func main() {
	fmt.Println("Run main application router")
	go router.GetEngine().Run(":8080")

	lis, err := net.Listen("tcp", ":8081")
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	// create a server instance
	s := grpc_api.Server{}         // create a gRPC server object
	grpcServer := grpc.NewServer() // attach the Ping service to the server

	api.RegisterPingServer(grpcServer, &s)

	if err := grpcServer.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}

func SayHello(c context.Context, in *api.PingMessage) (*api.PingMessage, error) {
	log.Printf("Received: %v", in.GetGreeting())
	return &api.PingMessage{Greeting: in.GetGreeting()}, nil
}

func Check() {
	fmt.Println("Check")
}
