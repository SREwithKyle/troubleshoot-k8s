# Use Golang as a builder
FROM golang:1.21 as builder

# Set working directory
WORKDIR /app

# Copy and build the app
COPY main.go .
RUN go build -o app main.go

# Use a minimal final image
FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/app .

# Ensure execution permissions
RUN chmod +x /root/app

# Start the application
CMD ["/root/app"]
