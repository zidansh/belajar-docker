docker volume create mongodata

docker container create --name mongovolume --publish 27022:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=zidan --env MONGO_INITDB_ROOT_PASSWORD=zidan mongo:latest