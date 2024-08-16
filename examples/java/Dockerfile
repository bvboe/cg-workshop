FROM cgr.dev/chainguard/jdk:latest AS builder
WORKDIR /work
COPY . .
RUN ./mvnw clean package

FROM cgr.dev/chainguard/jre:latest
WORKDIR /app
COPY --from=builder /work/target/*.jar hellojava.jar
ENTRYPOINT [ "java", "-jar", "hellojava.jar" ]
