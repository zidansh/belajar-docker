docker container stop mongovolume

docker container create --name nginxbackup --mount "type=bind,source=D:\FANUC\DEVELOP\FANUC PRO\IIS\docker\backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

D:\FANUC\DEVELOP\FANUC PRO\IIS\docker\backup

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash

tar cvf /backup/backup.tar.gz /data