FROM cgr.dev/chainguard/gcc-glibc:latest AS builder
WORKDIR /work
COPY . .
RUN make

FROM cgr.dev/chainguard/glibc-dynamic:latest
WORKDIR /app
COPY --from=builder /work/hello .
ENTRYPOINT [ "./hello" ]
