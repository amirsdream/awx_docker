docker run -d \
 --hostname postgres \
 --restart always \
 --net awx \
 --name awx_postgres \
 -v `pwd`/awx/pg/data:/var/lib/postgresql/data:Z \
 -e POSTGRES_USER="awx" \
 -e POSTGRES_PASSWORD="Ch4ng3m3!" \
 -e POSTGRES_DB="awx" \
 -e PGDATA=/var/lib/postgresql/data/pgdata \
 postgres:10
