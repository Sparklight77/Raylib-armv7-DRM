# Dockerfile.cross-raylib
FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture armhf && \
    apt-get update && \
    apt-get install -y \
      cmake ninja-build git tar \
      gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf \
      gcc-aarch64-linux-gnu g++-aarch64-linux-gnu \
      libdrm-dev libgbm-dev libinput-dev libgles2-mesa-dev \
      libx11-dev:armhf libxrandr-dev:armhf libxcursor-dev:armhf libxi-dev:armhf \
      libxinerama-dev:armhf libxext-dev:armhf libxfixes-dev:armhf libxrender-dev:armhf \
      libx11-dev:arm64 libxrandr-dev:arm64 libxcursor-dev:arm64 libxi-dev:arm64 \
      libxinerama-dev:arm64 libxext-dev:arm64 libxfixes-dev:arm64 libxrender-dev:arm64

WORKDIR /build