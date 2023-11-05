docker volume create mongorestore

docker container run --rm --name ubunturestore --mount "type=bind,source=/D:/laragon/www/belajar-docker/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/mongodata.tar.gz --strip 1"

docker container run --rm --name ubunturestore --mount "type=bind,source=/D:/laragon/www/belajar-docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest bash -c "tar xvf /backup/backup.tar.gz --strip 1"  

docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest