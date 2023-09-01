FROM ghcr.io/codehoschi/alpine:rolling@sha256:ba9ade0274aaf52e85d4be989b10b0f62ea095f91de717e3d76121f1c7012cce

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

#hadolint ignore=DL3018
RUN apk add --no-cache postgresql15-client~"${VERSION}"

USER kah

COPY ./apps/postgres-init/entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/postgres/postgres"