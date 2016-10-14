# Database container for the TLS archiver

This repository contains the source required to build the database container.

It also contains the database structure in the
[root/initdb.sql](root/initdb.sql) file.

To directly execute commands on the dabase (we assume the container is running
with the name `tlsa-db`), use the following command:

    docker exec -it tlsa-db psql -U archiver archives
