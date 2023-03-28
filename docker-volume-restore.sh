docker volume create mongodatabackup

docker container run --rm --name ubunturestore --mount "type=bind,source=D:\FANUC\DEVELOP\FANUC PRO\IIS\docker\backup,destination=/backup" --mount "type=volume,source=mongodatabackup,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backuplagu.tar.gz --strip 1" 

docker container create --name mongorestore --publish 27023:27017 --mount "type=volume,source=mongodatabackup,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=zidan --env MONGO_INITDB_ROOT_PASSWORD=zidan mongo:latest