FROM golang:1.17-alpine3.14 as builder

WORKDIR /app

COPY . .

RUN go build -o main main.go

FROM alpine:3.14

WORKDIR /app

RUN apk add --no-cache tzdata=2021a-r0

COPY templates templates
COPY --from=builder /app/main .

ENV TIMEZONE=Europe/Moscow
ENV TIME_FORMAT=15:04:05

ENTRYPOINT ["./main"]
