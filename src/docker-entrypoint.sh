#!/bin/sh
set -eo pipefail
echo "DOCKER ENTRYPOINT"
if [ ! -z "$QRTRLY_COMMAND" ]; then
    echo "Setting 15min job..."
    echo "$QRTRLY_COMMAND" > /etc/periodic/15min/15min_command.sh
    chmod -R +x /etc/periodic/15min/*.sh
fi
echo "FIM ENTRYPOINT, executando $@"
exec "$@"

