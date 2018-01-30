FROM abradle/rdkitcentos
MAINTAINER Anthony Bradley <anthony.richard.bradley@gmail.com>
USER root
ADD pli /usr/local/pli
RUN yum install zlib-devel -y
RUN cd /usr/local/pli && make
RUN useradd -ms /bin/bash centos
USER centos
WORKDIR /home/centos
ENV PLI_DIR /usr/local/pli
USER centos
