
init:
	@go get -u google.golang.org/protobuf/proto
	@go install github.com/golang/protobuf/protoc-gen-go@latest
	@go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@latest
	@go install github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger@latest

genproto:
	protoc --go_out=./proto/hello --go-grpc_out=./proto/hello --grpc-gateway_out=./proto/hello --swagger_out=. ./proto/hello/hello.proto
