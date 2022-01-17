package grpc_api

import (
	"golang.org/x/net/context"
	"log"

	api "go_monogrepo/packages/proto_build/proto/api"
)

// Server represents the gRPC server
type Server struct {
}

// SayHello generates response to a Ping request
func (s *Server) SayHello(ctx context.Context, in *api.PingMessage) (*api.PingMessage, error) {
	log.Printf("Receive message %s", in.Greeting)
	return &api.PingMessage{Greeting: "bar"}, nil
}
