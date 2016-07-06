DOCKER_DIRNAME=mongoDB
sudo service docker restart && docker-compose up -d && docker exec -i -t $DOCKER_DIRNAME bash

