#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

# Install Oracle Java 7
sudo bash -c "echo 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list"
sudo bash -c "echo 'deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886
sudo apt-get update
sudo echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install -y --force-yes --no-install-recommends oracle-java7-installer oracle-java7-set-default

# Install utilities
sudo LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends ant ant-contrib wget pwgen ca-certificates

# Install Tomcat
sudo wget -q https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.55/bin/apache-tomcat-7.0.55.tar.gz
sudo tar zxf apache-tomcat-*.tar.gz
sudo mkdir -p /var/lib/tomcat
sudo mv apache-tomcat-7.0.55/* /var/lib/tomcat

sudo sed -i 's/port="8080"/port="8080" URIEncoding="UTF-8"/' /var/lib/tomcat/conf/server.xml

sudo sed -i 's/# By default this script does nothing./\/var\/lib\/tomcat\/bin\/catalina.sh run \&/' /etc/rc.local