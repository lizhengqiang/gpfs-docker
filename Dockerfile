FROM golang:latest as prod

WORKDIR /
RUN chmod +x /app

EXPOSE 8080

# Config
ENV CONFIG_PATH="./config/product.toml"

CMD ["/app"]
