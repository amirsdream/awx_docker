docker run -d \
  --name awx \
  --hostname awx \
  --net awx \
  --user=root \
  --restart always \
  -v `pwd`/awx/SECRET_KEY:/etc/tower/SECRET_KEY \
  -v `pwd`/awx/environment.sh:/etc/tower/conf.d/environment.sh \
  -v `pwd`/awx/credentials.py:/etc/tower/conf.d/credentials.py \
  -v `pwd`/awx/projects:/var/lib/awx/projects:rw \
  -e DATABASE_USER="awx" \
  -e DATABASE_NAME="awx" \
  -e DATABASE_HOST="awx_postgres" \
  -e DATABASE_PORT="5432" \
  -e DATABASE_PASSWORD="Ch4ng3m3!" \
  -e MEMCACHED_HOST="awx_memcached" \
  -e RABBITMQ_HOST="awx_rabbitmq" \
  -e AWX_ADMIN_USER="admin" \
  -e AWX_ADMIN_PASSWORD="changeme" \
  ansible/awx_task

sleep 10
docker exec awx '/usr/bin/update-ca-trust'