#!/bin/sh
docker run --rm -ti \
    -v /var/run/docker.sock:/var/run/docker.sock:ro \
    vertigo/crond:latest
