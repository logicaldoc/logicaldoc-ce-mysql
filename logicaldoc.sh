#!/bin/bash
set -eo pipefail

# it is possible that setup left logicadoc running, we need to stop it and run catalina in window
# so that my_init will keep the process ruinning
/opt/logicaldoc/bin/logicaldoc.sh stop
sleep 10
printf "Waiting for mysql initialization\n"
/opt/logicaldoc/wait-for-it.sh 127.0.0.1:3306 -t 100 
/opt/logicaldoc/bin/logicaldoc.sh run 
