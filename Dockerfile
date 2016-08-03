# Crond with docker client
# To be used as a cron scheduler on docker hosts with tasks on docker containers

FROM alpine:3.4

RUN apk add --update --no-cache docker

CMD ["crond", "-f", "-d", "8"]

