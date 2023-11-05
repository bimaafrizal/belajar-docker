D:\Golang Project\belajar-docker
D:\laragon\www\belajar-docker 

docker container create --name nginxbackup --mount "type=bind,source=D:\laragon\www\belajar-docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash

tar -cvf /backup/mongodata.tar.gz /data

docker container stop nginxbackup

docker container rm nginxbackup

docker container start mongovolume

# menjalankan container secara langsung
# gunakan image yang berjalan sekali

docker container run --rm --name ubuntuLatest --mount "type=bind,source=/D:/laragon/www/belajar-docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest tar -cvf /backup/mongodata-lagi.tar.gz /data