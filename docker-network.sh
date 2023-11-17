docker network ls

docker network create --driver bridge belajar-network
docker network rm belajar-network

docker network create --driver bridge mongonetwork
docker container create --name mongodbnetwork --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=bima --env MONGO_INITDB_ROOT_PASSWORD=bima mongo:latest

docker image pull mongo-express:latest

#--publish 27017:27017 -> --publish port di hist:port container
# nama host => nama container mongodb//bima:bima@mongodb:27017/ pada command disini adalah mongodb
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://bima:bima@mongodbnetwork:27017/" mongo-express:latest
