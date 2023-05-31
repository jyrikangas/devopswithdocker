FROM golang:1.16

WORKDIR /app
COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build

RUN adduser backenduser
USER backenduser

EXPOSE 8080
CMD ["./server"]