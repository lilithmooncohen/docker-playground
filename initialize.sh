#!/bin/bash

docker-compose up -d && \
sleep 2 && \
docker exec -it dockerplayground_node1_1 /bin/sh -c "docker swarm init" && \
sleep 2 && \
docker exec -it dockerplayground_node2_1 /bin/sh -c "docker swarm join node1:2377" && \
docker exec -it dockerplayground_node3_1 /bin/sh -c "docker swarm join node1:2377" && \
sleep 1 && \
docker exec -it dockerplayground_node1_1 /bin/sh -c "docker node ls" && \
docker-compose logs -f
