FROM ghcr.io/ublue-os/fedora-toolbox:latest

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="customized ublue-os fedora toolbox image" \
      maintainer="Adderflight"

COPY extra-packages /
RUN dnf update && \
    grep -v '^#' /extra-packages | xargs dnf install -y
RUN rm /extra-packages
