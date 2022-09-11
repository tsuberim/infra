FROM rust:alpine as builder

ADD . .

RUN cargo build --release

FROM rust:alpine as runtime

ENTRYPOINT [ "executable" ]

