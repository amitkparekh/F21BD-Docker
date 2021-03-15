# F21BD — Running things using Docker

Installing dependencies and making things work can be annoying. Docker can make this much easier!
This repository can make for running and using the different databases _much_ easier!

<!-- ## Table of Contents -->

## Pre-requisites

- git
- Docker v20 or greater
- Docker Compose v1.27 or greater

Both of these _must_ be available in your PATH. You can verify this by opening your terminal or command-line and running:

```bash
docker --version
docker-compose --version
```

## Running things

This repository has one `docker-compose.yaml` file which can run everything you need for the course. Below are how to run and access each one.

### Jena-Fuseki

1. Open terminal within your local repo
1. Run `docker-compose up jena-fuseki`

You should be able to access the Web UI from `localhost:3030` as normal.

#### Notes

- The default password for the admin user is `admin`.
- Data persists across runs

### Neo4J

1. Open terminal within your local repo
1. Run `docker-compose up neo4j`

The default username is `neo4j` and the default password is `graphdb`.

You should be able to access the Web UI from `localhost:7474` as normal.

### Mongo

1. Open terminal within your local repo
1. Run `docker-compose up mongo`
1. TODO: Add other steps here.

### Cassandra

1. Open terminal within your local repo
1. Run `docker-compose up -d cassandra`
1. Wait for Cassandra to be ready
1. Run `bash scripts/connect-to-cassandra-cqlsh.sh` to connect and use CQLSH. If it's not ready, it will error, so just try again.

#### Notes

- Data persists across runs.
- Run `docker-compose logs f21bd-cassandra` to see the logs
