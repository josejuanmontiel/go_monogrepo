rm -rf proto_build/
mkdir -p proto_build/

protoc -I=. --go_out=proto_build --go_opt=paths=source_relative proto/api/*.proto

cd proto_build
go mod init api_gen
go mod tidy
