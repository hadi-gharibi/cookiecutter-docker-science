
FROM ubuntu:16.04

RUN apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates \
  build-essential \
  byobu \
  curl \
  git \
  htop \
  python3.5 \
  python3-pip \
  python3-dev \
  python-setuptools \
  unzip \
  && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/archive/Anaconda3-5.0.0.1-Linux-x86_64.sh -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
    rm ~/anaconda.sh

ENV PATH /opt/conda/bin:$PATH

RUN pip3 install --upgrade pip

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

ARG UID
RUN useradd docker -u $UID -s /bin/bash -m
USER docker

VOLUME /work
WORKDIR /work

ENTRYPOINT ["/bin/bash"]
