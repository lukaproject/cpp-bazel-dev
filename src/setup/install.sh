#/bin/bash

# change to Tsinghua source
mv /setup/sources.list /etc/apt/sources.list

apt-get update
apt-get install ca-certificates

# prepare env
apt-get install -y \
        curl \
        apt-utils \
        openssl \
        wget

# install base deps
apt-get install -y \
        git \
        g++ \
        make \
        libssl-dev \
        libgflags-dev \
        libprotobuf-dev \
        libprotoc-dev \
        protobuf-compiler \
        libgtest-dev

# install bazelisk
wget -O /bin/bazelisk https://github.com/bazelbuild/bazelisk/releases/download/v1.19.0/bazelisk-linux-amd64
chmod +x /bin/bazelisk
