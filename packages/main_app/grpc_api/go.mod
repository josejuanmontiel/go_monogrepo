module go_monogrepo/packages/main_app/grpc_api

go 1.17

replace go_monogrepo/packages/proto_build => /home/jose/workspace/go/sandbox/go_monogrepo/packages/proto_build

require (
	go_monogrepo/packages/proto_build v0.0.1
	golang.org/x/net v0.0.0-20220114011407-0dd24b26b47d
	github.com/golang/protobuf v1.5.0 // indirect
	golang.org/x/sys v0.0.0-20210423082822-04245dca01da // indirect
	golang.org/x/text v0.3.6 // indirect
	google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013 // indirect
	google.golang.org/grpc v1.43.0 // indirect
	google.golang.org/protobuf v1.27.1 // indirect
)
