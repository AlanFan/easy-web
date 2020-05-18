FROM registry.lab.gps-shanghai.com:5000/pfan/golang:1.12.9-alpine3.10 as builder
COPY web.go .
RUN go build -o /web .

FROM registry.lab.gps-shanghai.com:5000/pfan/alpine:3.10
ENV GOTRACEBACK=single
CMD ["./web"]
COPY --from=builder /web .