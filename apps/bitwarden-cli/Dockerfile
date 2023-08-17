FROM ghcr.io/codehoschi/ubuntu:rolling@sha256:b4c02da88912a963097210beaa0bb889e2123285865d4af02e79041abe02850b

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

ENV BW_CLI_VERSION=2023.7.0

RUN apt update && \
    apt install -y wget unzip && \
    wget https://github.com/bitwarden/clients/releases/download/cli-v${BW_CLI_VERSION}/bw-linux-${BW_CLI_VERSION}.zip && \
    unzip bw-linux-${BW_CLI_VERSION}.zip && \
    chmod +x bw && \
    mv bw /usr/local/bin/bw && \
    rm -rfv *.zip

COPY ./apps/bitwarden-cli/entrypoint.sh /entrypoint.sh
CMD ["/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/bitwarden/clients"