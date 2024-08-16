FROM cgr.dev/chainguard/go:latest AS build
WORKDIR /work
COPY . .
RUN go build -o hello-server .

FROM cgr.dev/chainguard/glibc-dynamic:latest
WORKDIR /app
COPY --from=build /work/hello-server .
CMD ["./hello-server"]
