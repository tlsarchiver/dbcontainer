# Database container for the TLS archiver

This repository contains the source required to build the database container.

It also contains the database structure in the
[root/initdb.sql](root/initdb.sql) file.

## Using it

To run the container (development):

    docker run --rm -e POSTGRES_PASSWORD=mysupersecretpassword -it -p 127.0.0.1:5432:5432 --name=tlsa-db tlsarchiver/dbcontainer

To directly execute commands on the dabase, use the following command:

    docker exec -it tlsa-db psql -U archiver archives

## Development

To rebuild the Docker image:

    make

To upload the image to the Docker Hub if you have the correct rights:

    make upload-image
