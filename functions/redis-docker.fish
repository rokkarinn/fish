function redis-docker
    docker rm (docker ps -aq --filter name=redis) --force
    docker run --name local-docker-redis -p 6379:6379 --restart always --detach redis --rm redis
end

