#!/bin/sh
ENVBASH=$1
ENVBASH=${ENVBASH:-"sh"}
#echo "ENVBASH=$ENVBASH"
docker run --rm -ti \
    -v /var/run/docker.sock:/var/run/docker.sock:ro \
    vertigo/crond:latest $ENVBASH ${@:2}
