FROM rust:latest
WORKDIR /app
COPY . /app

RUN cargo install --force --path .
