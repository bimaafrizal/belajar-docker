docker image pull mongo:latest

docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=D:/laragon/www/belajar-docker/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest