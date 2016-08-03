FROM alpine:3.4

RUN apk add --update --no-cache docker

CMD ["crond", "-f", "-d", "8"]

