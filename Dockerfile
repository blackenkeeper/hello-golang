FROM golang:1.21.0

ENV CGO_ENABLED=0 \
    GOOS=linux    \
    GOARCH=amd64  

WORKDIR /app

COPY . .

RUN go mod download

RUN go build -o /main main.go

CMD ["/main"]


