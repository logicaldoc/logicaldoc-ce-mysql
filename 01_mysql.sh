#!/bin/bash
set -eo pipefail

if [ -z "$MYSQL_ROOT_PASSWORD" ]; then
   MYSQL_ROOT_PASSWORD=logicaldoc
fi
if [ -z "$MYSQL_DBNAME" ]; then
   MYSQL_DBNAME=logicaldoc
fi
if [ -z "$MYSQL_DBUSER" ]; then
   MYSQL_DBUSER=logicaldoc
fi
if [ -z "$MYSQL_DBPASS" ]; then
   MYSQL_DBPASS=logicaldoc
fi

chown -R mysql:mysql "$MYSQL_DATADIR"
# first run, database is not initialized
if [ ! -d "$MYSQL_DATADIR/$MYSQL_DBNAME" ]; then

# Install MySQL Server in a Non-Interactive mode. Default root password will be "root"
 echo "mysql-server-5.7 mysql-server/root_password password $MYSQL_ROOT_PASSWORD" | sudo debconf-set-selections
 echo "mysql-server-5.7 mysql-server/root_password_again password $MYSQL_ROOT_PASSWORD" | sudo debconf-set-selections
 dpkg-reconfigure -f noninteractive  mysql-server-${MYSQL_VERSION}

# echo "SQL_STATEMENT" |  mysql -u root --password="${MYSQL_ROOT_PASSWORD}"
 mysqld_safe & sleep 10s
 echo "CREATE DATABASE IF NOT EXISTS ${MYSQL_DBNAME};" | mysql -u root --password="${MYSQL_ROOT_PASSWORD}"
 echo "GRANT ALL ON ${MYSQL_DBNAME}.* TO '${MYSQL_DBUSER}'@'%' IDENTIFIED BY '${MYSQL_DBPASS}'  WITH GRANT OPTION;" | mysql -u root --password="${MYSQL_ROOT_PASSWORD}"

else
 printf "MySql already installed\n"
fi
killall mysqld_safe & sleep 3s
