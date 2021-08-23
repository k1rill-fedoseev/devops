FROM golang:1.17-alpine3.14 as builder

WORKDIR /app

COPY . /app

RUN go build -o main main.go

FROM alpine:3.14

RUN adduser -D user

WORKDIR /app

RUN apk add --no-cache tzdata=2021a-r0

COPY templates templates
COPY --from=builder /app/main .

ENV TIMEZONE=Europe/Moscow
ENV TIME_FORMAT=15:04:05

EXPOSE 8000

USER user

ENTRYPOINT ["./main"]
