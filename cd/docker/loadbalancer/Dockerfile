FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y varnish

ADD etc/varnish/default.vcl /etc/varnish/default.vcl

CMD /usr/sbin/varnishd -F -f /etc/varnish/default.vcl