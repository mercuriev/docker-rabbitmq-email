#!/bin/bash
sed "s/tenant.com/$MAILNAME/g" /etc/rabbitmq/advanced.config.tpl > /etc/rabbitmq/advanced.config
bash /usr/local/bin/docker-entrypoint.sh "$@"
