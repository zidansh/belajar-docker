docker image pull nginx:latest

docker container create --name contohnginx --publish 8081:80 nginx:latest

docker container start contohnginx