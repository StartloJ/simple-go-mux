FROM docker.io/golang:1.21.8-alpine as builds

WORKDIR /app

COPY go.* .

RUN go mod tidy && go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o main

FROM gcr.io/distroless/static-debian12 as runner
LABEL Author="Start(https://github.com/startloj)"
LABEL go_version="1.20"
LABEL app_version="0.1-dev"

WORKDIR /app

COPY --from=builds /app/main .

EXPOSE 8080

ENTRYPOINT [ "./main" ]