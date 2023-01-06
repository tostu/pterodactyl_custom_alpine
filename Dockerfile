FROM        alpine:3.17.0

RUN         apk add --update --no-cache ca-certificates curl ffmpeg git openssl sqlite tar tzdata openjdk17 nodejs npm python3 && adduser -D -h /home/container container

USER        container

ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh

CMD         [ "/bin/ash", "/entrypoint.sh" ]
