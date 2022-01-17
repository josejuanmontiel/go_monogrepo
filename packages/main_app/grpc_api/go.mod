module go_monogrepo/packages/main_app/grpc_api

go 1.17

replace go_monogrepo/packages/proto_build => /home/jose/workspace/go/sandbox/go_monogrepo/packages/proto_build

require (
	go_monogrepo/packages/proto_build v0.0.1
	golang.org/x/net v0.0.0-20220114011407-0dd24b26b47d
)
