FROM ubuntu

VOLUME ["/etc/"]

ADD rsyncd.conf /etc/rsyncd.conf

RUN apt-get update
RUN apt-get -y install rsync
RUN apt-get -y install net-tools

CMD ["/usr/bin/rsync","--daemon"]

