#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#
FROM php:7.1-alpine

LABEL repository="https://github.com/MilesChou/docker-psysh" \
    maintainer="MilesChou <jangconan@gmail.com>"

RUN set -xe && \
        curl -LO https://psysh.org/psysh && \
        chmod +x psysh && \
        mv psysh /usr/local/bin/ && \
        psysh -v

COPY docker-entrypoint /usr/local/bin/docker-entrypoint

ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
