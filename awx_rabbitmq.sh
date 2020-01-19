docker run -d \
 --hostname rabbitmq \
 --restart always \
 --name awx_rabbitmq \
 --net awx \
 -e RABBITMQ_DEFAULT_VHOST="awx" \
 -e RABBITMQ_DEFAULT_USER="guest" \
 -e RABBITMQ_DEFAULT_PASS="guest" \
 -e RABBITMQ_ERLANG_COOKIE="cookiemonster" \
 rabbitmq

