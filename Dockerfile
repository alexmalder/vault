# client image
FROM hashicorp/vault:1.21

COPY ./certs/vault.crt /usr/local/share/ca-certificates/vault.crt

RUN apk add --no-cache ca-certificates openssl curl

RUN update-ca-certificates
