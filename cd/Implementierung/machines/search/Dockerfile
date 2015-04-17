FROM ubuntu:14.04

# ENV CATALINA_HOME /var/lib/tomcat

ADD contents /tmp/contents
RUN chmod a+x /tmp/contents/install.sh
RUN /tmp/contents/install.sh

CMD /var/lib/tomcat/bin/catalina.sh run