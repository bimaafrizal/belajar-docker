docker build -t bimaafrizal/from from

docker image ls

#instruction
docker build -t bimaafrizal/run run
docker build -t bimaafrizal/run run --progress=plain --no-cache 

#CMD Instruction
docker build -t bimaafrizal/command command

docker image inspect bimaafrizal/command

docker container create --name command bimaafrizal/command

docker container logs command

#Label Instruction
docker build -t bimaafrizal/label label