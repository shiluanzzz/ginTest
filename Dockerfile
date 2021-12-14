FROM golang:alpine

WORKDIR $GOPATH/src/github.com/shiluanzzz/ginTest
COPY . $GOPATH/src/github.com/shiluanzzz/ginTest


RUN GOPROXY="https://goproxy.io" go build -o main .

EXPOSE 8989
ENTRYPOINT ["./main"]
