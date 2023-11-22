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

#add
docker build -t bimaafrizal/add add
docker container create --name add bimaafrizal/add
docker container start add
docker container logs add

#copy
docker build -t bimaafrizal/copy copy
docker container create --name copy bimaafrizal/copy
docker container start copy
docker container logs copy

#ignore
docker build -t bimaafrizal/ignore ignore
docker container create --name ignore bimaafrizal/ignore
docker container start ignore
docker container logs ignore

#expose
docker build -t bimaafrizal/expose expose
docker image inspect bimaafrizal/expose
docker container create --name expose -p 8080:8080 bimaafrizal/expose
docker container start expose
docker container ls
docker container logs expose

#env
docker build -t bimaafrizal/env env
docker image inspect bimaafrizal/env
docker container create --name env --env APP_PORT=9090 -p 9090:9090 bimaafrizal/env
docker container start env
docker container logs env

# volume
docker build -t bimaafrizal/volume volume
docker image inspect bimaafrizal/volume
docker container create --name volume -p 8080:8080 bimaafrizal/volume
docker container start volume
docker container logs volume
docker container inspect volume

# workdir
docker build -t bimaafrizal/workdir workdir
docker container create --name workdir -p 8080:8080 bimaafrizal/workdir
docker container start workdir
docker container exec -i -t workdir /bin/sh
#run pwd

# user
docker build -t bimaafrizal/user user
docker container create --name user -p 8080:8080 bimaafrizal/user
docker container start user
docker container exec -i -t user /bin/sh
#run whoami

# arg
docker build -t bimaafrizal/arg arg --build-arg app=bimaaa
docker container create --name arg -p 8080:8080 bimaafrizal/arg
docker container start arg
docker container exec -i -t arg /bin/sh
docker container logs arg
docker image inspect bimaafrizal/arg

# health
docker build -t bimaafrizal/health health
docker container create --name health -p 8080:8080 bimaafrizal/health
docker container start health
docker container ls
docker container inspect health

# entry point
docker build -t bimaafrizal/entrypoint entrypoint
docker container create --name entrypoint -p 8080:8080 bimaafrizal/entrypoint
docker container start entrypoint

# multi stage
docker build -t bimaafrizal/multistage multistage
docker container create --name multistage -p 8080:8080 bimaafrizal/multistage
docker container start multistage