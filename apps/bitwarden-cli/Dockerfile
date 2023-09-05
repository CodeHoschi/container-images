FROM ghcr.io/codehoschi/ubuntu:rolling@sha256:b4c02da88912a963097210beaa0bb889e2123285865d4af02e79041abe02850b
# FROM ghcr.io/codehoschi/alpine:rolling@sha256:ba9ade0274aaf52e85d4be989b10b0f62ea095f91de717e3d76121f1c7012cce

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

ENV BW_CLI_VERSION=2023.8.2

RUN apt update && \
    apt install -y wget unzip && \
    wget https://github.com/bitwarden/clients/releases/download/cli-v${BW_CLI_VERSION}/bw-linux-${BW_CLI_VERSION}.zip && \
    unzip bw-linux-${BW_CLI_VERSION}.zip && \
    chmod +x bw && \
    mv bw /usr/local/bin/bw && \
    rm -rfv *.zip

# RUN mkdir -p /app/bin \
#     && \
#     curl -fsSLOJ "https://github.com/bitwarden/clients/releases/download/cli-v${BW_CLI_VERSION}/bw-linux-${BW_CLI_VERSION}.zip" \
#     && \
#     unzip bw-linux-${BW_CLI_VERSION}.zip \
#     && \
#     chmod +x bw \
#     && \
#     mv bw /usr/local/bin/bw \
#     && \
#     rm -rfv *.zip

COPY ./apps/bitwarden-cli/entrypoint.sh /entrypoint.sh
CMD ["/entrypoint.sh"]

# ENTRYPOINT ["tail", "-f", "/dev/null"]

LABEL org.opencontainers.image.source="https://github.com/bitwarden/clients"