docker image pull ubuntu:latest

docker container stop mongovolume

docker container run --rm --name ubuntubackup --mount "type=bind,source=D:\FANUC\DEVELOP\FANUC PRO\IIS\docker\backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backuplagi.tar.gz /data

D:\FANUC\DEVELOP\FANUC PRO\IIS\docker\backup

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash

