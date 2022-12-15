FROM golang:1.19.4-alpine3.17

WORKDIR /go/src/github.com/apriendeau/golang-server

COPY . .

# Built Application
RUN go mod download
RUN go get -v ./...

RUN go build .

# optional
EXPOSE 3000

CMD ["./golang-server"]
