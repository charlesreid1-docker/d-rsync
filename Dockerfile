FROM ubuntu
MAINTAINER charles@charlesreid1.com

EXPOSE 873

VOLUME ["/etc/"]

ADD rsyncd.conf /etc/rsyncd.conf
ADD start_rsync_container.sh /start_rsync_container.sh

RUN apt-get update
RUN apt-get -y install rsync
RUN apt-get -y install net-tools

CMD ["/entrypoint.sh"]

