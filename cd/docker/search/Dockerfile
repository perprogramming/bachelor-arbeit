
FROM ubuntu:14.04

ENV CATALINA_HOME /var/lib/tomcat

# Install Oracle Java 7
RUN echo 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list
RUN echo 'deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886
RUN apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
RUN apt-get install -y --force-yes --no-install-recommends oracle-java7-installer oracle-java7-set-default

# Install utilities
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends ant ant-contrib wget pwgen ca-certificates

# Install Tomcat
RUN wget -q https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.55/bin/apache-tomcat-7.0.55.tar.gz
RUN tar zxf apache-tomcat-*.tar.gz
RUN mkdir -p /var/lib/tomcat
RUN mv apache-tomcat-7.0.55/* /var/lib/tomcat

RUN sed -i 's/port="8080"/port="8080" URIEncoding="UTF-8"/' /var/lib/tomcat/conf/server.xml

CMD /var/lib/tomcat/bin/catalina.sh run