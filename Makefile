GO ?= go

.PHONY: install
install:
	$(GO) install github.com/bufbuild/buf/cmd/buf@latest
	$(GO) install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
	$(GO) install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	$(GO) install github.com/bufbuild/connect-go/cmd/protoc-gen-connect-go@latest
