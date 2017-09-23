FROM ubuntu:16.04
MAINTAINER Mariusz Karpiarz <mariusz.karpiarz@datacentred.co.uk>

ADD install.sh /tmp/
ADD ansible-install-clients /tmp/ansible-install-clients
RUN /bin/sh /tmp/install.sh

VOLUME ["/root"]
WORKDIR /root

#CMD ["/usr/bin/supervisord -n"]
#CMD /usr/bin/supervisord -c /etc/supervisor/supervisord.conf
CMD while true; do echo hello world; sleep 1; done
