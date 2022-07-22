
init:
	@go get -u google.golang.org/protobuf/proto
	@go install github.com/golang/protobuf/protoc-gen-go@latest
	@go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@latest

genproto:
	protoc --go_out=./proto/hello --go-grpc_out=./proto/hello --grpc-gateway_out=./proto/hello ./proto/hello/hello.proto
