package grpc_api

import (
	"log"

	"golang.org/x/net/context"

	// Bazel
	api "go_monogrepo/packages/proto/api"
	// Go Modules...
	// api "go_monogrepo/packages/proto_build/proto/api"
)

// Server represents the gRPC server
type Server struct {
}

// SayHello generates response to a Ping request
func (s *Server) SayHello(ctx context.Context, in *api.PingMessage) (*api.PingMessage, error) {
	log.Printf("Receive message %s", in.Greeting)
	return &api.PingMessage{Greeting: "bar"}, nil
}
