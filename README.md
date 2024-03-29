# CloudNativePG Container with Vecto.rs

<!--renovate repo= -->
[![Build](https://github.com/gabe565/docker-cloudnativepg-vecto.rs/actions/workflows/build.yaml/badge.svg)](https://github.com/gabe565/docker-cloudnativepg-vecto.rs/actions/workflows/build.yaml)

> [!IMPORTANT]
> This repository has been archived in favor of [tensorchord/cloudnative-pgvecto.rs](https://github.com/tensorchord/cloudnative-pgvecto.rs).
> The current images will continue to be available, but new versions will not be built in this repository.

This repo builds Docker images for [CloudNativePG](https://cloudnative-pg.io/) with the [pgvecto.rs](https://github.com/tensorchord/pgvecto.rs) extension installed.

Both versions are automatically updated by Renovate bot, so new releases will be available within a few hours.

## Images

Images are available at [`ghcr.io/gabe565/cloudnativepg-vecto-rs`](https://github.com/gabe565/docker-cloudnativepg-vecto.rs/pkgs/container/cloudnativepg-vecto-rs). There are tags available for Postgres v14, v15, and v16.

## Deployment

Set `.spec.imageName` in the `Cluster` to use one of the container images provided by this repository.

For example:
```yaml
apiVersion: postgresql.cnpg.io/v1
kind: Cluster
metadata:
  name: example
spec:
  instances: 3
  imageName: ghcr.io/gabe565/cloudnativepg-vecto-rs:16
  postgresql:
    shared_preload_libraries:
      - vectors.so
```
