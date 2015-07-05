FROM viljaste/base:latest

MAINTAINER Jürgen Viljaste <j.viljaste@gmail.com>

ENV TERM xterm

ADD ./src /src

RUN cd /src && unzip 0.5.2_linux_amd64.zip && mv consul /usr/local/bin/consul && rm -rf /src

ENTRYPOINT ["/usr/local/bin/consul", "keygen"]
