docker image pull mongo:latest

docker container create --name contohmongo --publish 27020:27017 --env MONGO_INITDB_ROOT_USERNAME=zidan --env MONGO_INITDB_ROOT_PASSWORD=zidan mongo:latest

docker container start contohmongo