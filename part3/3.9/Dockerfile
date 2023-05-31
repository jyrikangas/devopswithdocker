FROM golang:1.16 as build

WORKDIR /app
COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN CGO_ENABLED=0 go build


FROM scratch

COPY --from=build /app/server /

ENV REQUEST_ORIGIN=http://localhost:5000


EXPOSE 8080
CMD ["/server"]