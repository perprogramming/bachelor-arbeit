#!/bin/bash
set -e

chown -R mysql:mysql /var/lib/mysql
chown -R mysql:mysql /var/log/mysql

if [ ! -d '/var/lib/mysql/mysql' ]; then
    mysql_install_db --user=mysql --datadir=/var/lib/mysql
	
    TEMP_FILE='/tmp/mysql-first-time.sql'
    cat > "$TEMP_FILE" <<-EOSQL
	DELETE FROM mysql.user ;
	CREATE USER 'root'@'%' IDENTIFIED BY 'root' ;
	GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION ;
	DROP DATABASE IF EXISTS test ;
EOSQL
	
    echo 'FLUSH PRIVILEGES;' >> "$TEMP_FILE"
	
    mysqld --init-file="$TEMP_FILE"
else
    mysqld
fi
