# PostgreSQL for Docker

This image is derived from [the Orchard PostgreSQL build](https://github.com/orchardup/docker-postgresql). However, this image is much smaller. That also means that this image lacks some features, such as PostGIS and SSL support.

## Running

    $ docker run -d -p 5432:5432 -e POSTGRESQL_USER=test -e POSTGRESQL_PASS=oe9jaacZLbR9pN -e POSTGRESQL_DB=test orchardup/postgresql
    da809981545f
    $ psql -h localhost -U test test
    Password for user test:
    psql (9.1.9, server 9.1.3)
    Type "help" for help.

    test=#

(Example assumes PostgreSQL client is installed on Docker host.)

## Building

Run the build-image.sh script in the top-level directory of your working copy as follows:

    ./build-image.sh username

Where `username` is the username you wish to use for your Docker image tags. This will often be your username on docker.io.
