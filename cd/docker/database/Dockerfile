FROM ubuntu:14.04

RUN groupadd -r mysql && useradd -r -g mysql mysql

RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB

RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/5.5/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list

RUN apt-get update

RUN apt-get install -y mariadb-server

RUN sed -ri 's/^(bind-address|skip-networking)/;\1/' /etc/mysql/my.cnf

RUN rm -rf /var/lib/mysql
RUN mkdir -p /var/lib/mysql

ADD usr/local/sbin/entrypoint.sh /usr/local/sbin/entrypoint.sh

CMD /usr/local/sbin/entrypoint.sh
