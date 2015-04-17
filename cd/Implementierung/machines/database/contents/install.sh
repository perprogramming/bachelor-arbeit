#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

sudo groupadd -r mysql && useradd -r -g mysql mysql

sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB
sudo bash -c "echo 'deb http://ftp.osuosl.org/pub/mariadb/repo/5.5/ubuntu trusty main' > /etc/apt/sources.list.d/mariadb.list"
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get update
sudo apt-get install -y mariadb-server

sudo mysqladmin --user=root --password=root shutdown

sudo sed -ri 's/^(bind-address|skip-networking)/;\1/' /etc/mysql/my.cnf

sudo rm -rf /var/lib/mysql
sudo mkdir -p /var/lib/mysql

sudo chown -R mysql:mysql /var/lib/mysql
sudo chown -R mysql:mysql /var/log/mysql

sudo mysql_install_db --user=mysql --datadir=/var/lib/mysql

TEMP_FILE='/tmp/mysql-first-time.sql'

cat > "$TEMP_FILE" <<-EOSQL
    DELETE FROM mysql.user ;
    CREATE USER 'root'@'%' IDENTIFIED BY 'root' ;
    GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION ;
    DROP DATABASE IF EXISTS test ;
    FLUSH PRIVILEGES ;
EOSQL

sudo mysqld --init-file="$TEMP_FILE" &
sleep 5
sudo mysqladmin --user=root --password=root shutdown

