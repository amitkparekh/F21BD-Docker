#!/usr/bin/env bash

CONTAINER_NAME="f21bd-cassandra"
NETWORK_NAME="f21bd-docker_cassandra-network"

docker run -it --network ${NETWORK_NAME} --rm cassandra cqlsh ${CONTAINER_NAME}
