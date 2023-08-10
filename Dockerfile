FROM golang:bullseye as build

RUN go install github.com/danielgtaylor/restish@latest

FROM gcr.io/distroless/base-debian11
COPY --from=build /go/bin/restish /

ENTRYPOINT [ "/restish" ]
