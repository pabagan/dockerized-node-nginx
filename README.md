# Node + Nginx
Dockerized enviroment with Node using Nginx as a Proxy

```bash
# Clone repository
git clone https://github.com/pabagan/env-Node-Nginx.git

# Docker Compose build
docker-compose build

# Run & log into the container
./sh/log.sh


# Start node (2 flavours)
# 1. Start node server at apps/angular-phonecat
# with package.json defined command
npm start

# 2. or go to hello app and execute hello.js
./hello.js

# Watch node app with nginx proxy at Docker default URL: http://0.0.0.0/ 
```

## Requirements
* [Docker Engine](https://docs.docker.com/installation/)
* [Docker Compose](https://docs.docker.com/compose/)
* [Docker Machine](https://docs.docker.com/machine/) (Mac and Windows only)
