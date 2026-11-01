FROM golang:1.26.5-alpine3.24 AS builder

RUN apk add --no-cache make

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o migrator ./cmd/migrator/main.go


FROM alpine:3.24

WORKDIR /app

COPY --from=builder /app/migrator .

CMD ["./migrator"]