FROM abradle/rdkitcentos
MAINTAINER Anthony Bradley <anthony.richard.bradley@gmail.com>
USER root
ADD pli /usr/local/pli
RUN yum install zlib-devel -y
RUN cd /usr/local/pli && make
ENV PLI_DIR /usr/local/pli
