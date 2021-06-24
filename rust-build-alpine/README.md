# Rust Build Alpine
Compile Rust code to be run on Alpine environment.

Distributing work under Alpine Linux require you to build against [MUSL Libc](https://www.musl-libc.org) so that you can take advantage of the small [official Docker image for Alpine](https://hub.docker.com/_/alpine).

This Docker image is a just a pre-configured [official Docker image for Rust](https://hub.docker.com/_/rust). See [Rust official website](https://www.rust-lang.org/).

## Details
- *Name*: Rust Build Alpine
- *License*: [MIT](https://cli.angular.io/license.html)
- *Resources*
  - [Rust Language](https://www.rust-lang.org)
  - [Alpine Linux](https://alpinelinux.org)
  - [Rust Official Docker Image](https://hub.docker.com/_/rust)
- *Scripts*
  - cargo: Convenience script.

## Changelog
- **2021.05.07**:
  - Initial
  - Rust version 1.51.0
