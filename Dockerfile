FROM rabbitmq:3.8-management

COPY rabbitmq_delayed_message_exchange-3.8.0.ez gen_smtp-0.14.0.ez rabbitmq_email-20191004-3.8.x.ez /opt/rabbitmq/plugins/
RUN chown -R rabbitmq: /opt/rabbitmq/plugins/

RUN rabbitmq-plugins enable --offline rabbitmq_tracing rabbitmq_delayed_message_exchange rabbitmq_email

COPY advanced.config /etc/rabbitmq/
