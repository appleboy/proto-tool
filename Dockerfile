FROM golang:1.18-alpine

LABEL maintainer="Bo-Yi Wu <appleboy.tw@gmail.com>" \
  org.label-schema.name="proto-tool" \
  org.label-schema.vendor="Bo-Yi Wu" \
  org.label-schema.schema-version="1.0"

RUN apk add --no-cache make && \
  rm -rf /var/cache/apk/*

RUN go install github.com/bufbuild/buf/cmd/buf@latest && \
  go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest && \
  go install google.golang.org/protobuf/cmd/protoc-gen-go@latest && \
  go install github.com/bufbuild/connect-go/cmd/protoc-gen-connect-go@latest

CMD ["/bin/sh"]
