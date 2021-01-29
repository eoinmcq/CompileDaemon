FROM golang:1.15.7-alpine
ENV GO111MODULE=on
RUN go get github.com/githubnemo/CompileDaemon@v1.2.1