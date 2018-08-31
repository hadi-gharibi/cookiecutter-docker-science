{% if cookiecutter.use_nvidia_docker == 'yes' -%}
FROM nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04
{% else %}
FROM ubuntu:16.04
{%- endif %}

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
  && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*


RUN pip3 install --upgrade pip

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

ARG UID
RUN useradd docker -u $UID -s /bin/bash -m
USER docker

VOLUME /work
WORKDIR /work

ENTRYPOINT ["/bin/bash"]
