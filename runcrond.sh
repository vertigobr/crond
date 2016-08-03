#!/bin/sh
docker run --rm -ti \
    -v /var/run/docker.sock:/var/run/docker.sock:ro \
    -e "QRTRLY_COMMAND=echo 'OIOIOI' > /tmp/oioi" \
    vertigo/crond:latest
