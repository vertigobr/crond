# Crond with docker client
# To be used as a cron scheduler on docker hosts with tasks on docker containers

FROM alpine:3.4

RUN apk add --update --no-cache docker

ADD src/*.sh /

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["crond", "-f", "-d", "8"]

