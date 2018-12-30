# postgres-s3

[![License][license_md]][license]
[![Docker Pull][docker_pull]][docker]
[![Docker Star][docker_star]][docker]
[![Docker Size][docker_size]][docker]
[![Docker Layer][docker_layer]][docker]

Schedule backup PostgreSQL database to S3 compatible storage.

## Usage

```yml
version: "3"

services:
  postgres:
    image: postgres
    environment:
      POSTGRES_DB: db
      POSTGRES_USER: abc
      POSTGRES_PASSWORD: abc
  backup:
    image: joshava/postgres-s3
    environment:
      POSTGRES_HOST: postgres
      POSTGRES_DATABASE: db
      POSTGRES_USER: abc
      POSTGRES_PASSWORD: abc
      S3_ACCESS_KEY: <YOUR_KEY>
      S3_ACCESS_SECRET: <YOUR_SECRET>
      S3_BUCKET: <YOUR_BUCKET>
      S3_REGION: sfo2
      S3_ENDPOINT: https://sfo2.digitaloceanspaces.com
      S3_PREFIX: db
      PERIOD: "* 0 * * *"
      RUN: "true"
```

[docker]: https://hub.docker.com/r/joshava/mysql-s3
[docker_pull]: https://img.shields.io/docker/pulls/joshava/mysql-s3.svg
[docker_star]: https://img.shields.io/docker/stars/joshava/mysql-s3.svg
[docker_size]: https://img.shields.io/microbadger/image-size/joshava/mysql-s3.svg
[docker_layer]: https://img.shields.io/microbadger/layers/joshava/mysql-s3.svg
[license]: https://github.com/joshava/mysql-s3/blob/master/LICENSE
[license_md]: https://img.shields.io/github/license/joshava/mysql-s3.svg
