FROM ubuntu:14.04

ADD contents /tmp/contents
RUN chmod a+x /tmp/contents/install.sh
RUN /tmp/contents/install.sh

CMD /usr/sbin/varnishd -F -f /etc/varnish/default.vcl