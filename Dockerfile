FROM golang:latest

WORKDIR $GOPATH/src/github.com/shiluanzzz/ginTest
COPY . $GOPATH/src/github.com/shiluanzzz/ginTest
RUN go build .

EXPOSE 8888

ENTRYPOINT ["./ginTest"]
