FROM alpine:3.22.0

RUN apk add --no-cache bash curl && \
    curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | sudo -E bash && \
    apk add symfony-cli

ENTRYPOINT ["symfony-cli"]
