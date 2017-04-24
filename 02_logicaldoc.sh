#!/bin/bash
set -eo pipefail
if [ ! -d /opt/logicaldoc/bin ]; then
 printf "Installing LogicalDOC\n"
 mysqld_safe & sleep 10s
 /opt/logicaldoc/wait-for-it.sh 127.0.0.1:3306 -t 100

 # Adjust the installer descriptor
 sed -i "s/LDOC_MEMORY/${LDOC_MEMORY}/" /opt/logicaldoc/auto-install.xml

 java -jar /opt/logicaldoc/logicaldoc-installer.jar /opt/logicaldoc/auto-install.xml
 killall mysqld_safe & sleep 3s
	
 # Adjust the startup scripts
 sed -i "s/ulimit/\#ulimit/" /opt/logicaldoc/bin/logicaldoc.sh
else
 printf "LogicalDOC already installed\n"
fi
