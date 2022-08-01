FROM golang:1.18-alpine

LABEL maintainer="Bo-Yi Wu <appleboy.tw@gmail.com>" \
  org.label-schema.name="proto-tool" \
  org.label-schema.vendor="Bo-Yi Wu" \
  org.label-schema.schema-version="1.0"

RUN apk add --no-cache make && \
  rm -rf /var/cache/apk/*

RUN make install

CMD ["/bin/sh"]
