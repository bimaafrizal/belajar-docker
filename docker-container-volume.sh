docker volume create mongodata

docker container create --name mongodata --publish 27018:27017 --mount "type=volume,source=mongodata(namavolume),destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest