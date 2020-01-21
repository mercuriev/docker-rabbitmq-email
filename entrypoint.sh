#!/bin/bash
sed -i "s/tenant.com/$MAILNAME/g" /etc/rabbitmq/advanced.config
bash /usr/local/bin/docker-entrypoint.sh "$@"
