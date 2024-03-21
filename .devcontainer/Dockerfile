# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.195.0/containers/cpp/.devcontainer/base.Dockerfile
# [Choice] Debian / Ubuntu version (use Debian 11/9, Ubuntu 18.04/21.04 on local arm64/Apple Silicon): debian-11, debian-10, debian-9, ubuntu-21.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT=debian-12
FROM mcr.microsoft.com/vscode/devcontainers/cpp:1-${VARIANT}

RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list.d/debian.sources \
    && sed -i 's/http:/https:/g' /etc/apt/sources.list.d/debian.sources \
    && apt-get update

#RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#    && apt-get -y install --no-install-recommends software-properties-common
RUN apt-get update && apt-get -y install --no-install-recommends software-properties-common

WORKDIR /opt/devcontainer-setup
ADD ./scripts .
RUN ./install_cmake.sh
RUN ./install_clang-format.sh
#RUN ./install_vcpkg.sh