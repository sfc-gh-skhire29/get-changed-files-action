FROM alpine:3.13.2

LABEL maintainer="sarvesh.khire@snowflake.com"

RUN apk add bash git openssh grep sed

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]