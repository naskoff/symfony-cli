FROM alpine:3.22.0

RUN apk add --no-cache bash curl
RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash
RUN apk add --no-cache symfony-cli

ENTRYPOINT ["symfony-cli"]
