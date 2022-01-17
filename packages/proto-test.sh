rm -rf proto_build/
mkdir -p proto_build/

#protoc -I=. --go_out=proto_build --go_opt=paths=source_relative --go-grpc_out=proto_build --go-grpc_opt=paths=source_relative proto/api/*.proto
protoc -I=. --go_out=proto_build --go_opt=paths=source_relative --go-grpc_out=require_unimplemented_servers=false:proto_build --go-grpc_opt=paths=source_relative proto/api/*.proto

cd proto_build
go mod init proto_build
go mod tidy
