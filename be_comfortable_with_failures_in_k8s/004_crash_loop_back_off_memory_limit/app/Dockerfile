FROM golang:1.21 as builder

WORKDIR /app

COPY main.go .

# Force static linking by using CGO_ENABLED=0
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o app main.go

FROM alpine:latest

WORKDIR /root/
COPY --from=builder /app/app .

RUN chmod +x /root/app

CMD ["/root/app"]
