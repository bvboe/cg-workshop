docker build . -t go-example:latest
docker run -p 8080:8080 go-example:latest