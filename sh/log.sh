DOCKER_DIRNAME=nginx-node
sudo service docker restart && docker-compose up -d && docker exec -i -t $DOCKER_DIRNAME bash

