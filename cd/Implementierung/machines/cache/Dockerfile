FROM ubuntu:14.04

ADD contents /tmp/contents
RUN chmod a+x /tmp/contents/install.sh
RUN /tmp/contents/install.sh

CMD redis-server
