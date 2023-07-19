FROM rust:alpine AS build

WORKDIR /test
COPY . /test

RUN sed -i "s@https://dl-cdn.alpinelinux.org/@https://repo.huaweicloud.com/@g" /etc/apk/repositories
RUN apk add --no-cache musl-dev pkgconfig
RUN cargo build --release

