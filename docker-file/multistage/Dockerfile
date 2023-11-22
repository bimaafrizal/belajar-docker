FROM golang:1.21.4-alpine as builder
WORKDIR /app/
COPY main.go /app/
RUN go build -o /app/main /app/main.go

FROM alpine:latest
WORKDIR /app/
COPY --from=builder /app/main /app/
EXPOSE 8080
CMD ["/app/main"]