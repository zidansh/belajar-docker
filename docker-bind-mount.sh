docker container create --name mongomount --publish 27021:27017 --mount "type=bind,source=D:\FANUC\DEVELOP\FANUC PRO\IIS\docker\mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=zidan --env MONGO_INITDB_ROOT_PASSWORD=zidan mongo:latest