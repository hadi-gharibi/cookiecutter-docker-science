FROM ubuntu:16.04
#
#LEVEL 1
#
COPY ./docker/setup.sh /root/
RUN bash /root/setup.sh
#
#LEVEL 2
#
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py
COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt
ARG UID
RUN useradd docker -u $UID -s /bin/bash -m
USER docker
VOLUME /work
WORKDIR /work
ENTRYPOINT ["/bin/bash"]
