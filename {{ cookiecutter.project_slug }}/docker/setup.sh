#!/bin/sh

apt-get update
apt-get install software-properties-common python-software-properties -y
apt-add-repository ppa:deadsnakes/ppa
apt-get update
apt-get install python3.6
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6
update-alternatives --config python3
apt-get install -y wget bzip2 ca-certificates \
    build-essential \
    byobu \
    curl \
    git \
    htop \
    python3-pip \
    python-setuptools \
    unzip
apt-get clean
rm -rf /var/lib/apt/lists/*
