docker run -d \
  --name awx_memcached \
  --hostname memcached \
  --net awx \
  --restart always \
  memcached:alpine 
