#!/bin/sh
sed -i "s/example.com/$TENANT_DOMAIN/g" /etc/rabbitmq/advanced.config
cat /usr/local/bin/docker-entrypoint.sh
bash /usr/local/bin/docker-entrypoint.sh $@
