FROM golang:1.16-alpine

WORKDIR /app
COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build && \
    adduser -D backenduser
USER backenduser

EXPOSE 8080
CMD ["./server"]