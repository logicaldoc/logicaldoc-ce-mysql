#!/bin/bash
set -eo pipefail
# first init will leave mysql started
/etc/init.d/mysql stop
sleep 5
exec mysqld_safe
