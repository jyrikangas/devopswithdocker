FROM docker:20-git

COPY . .

ENTRYPOINT docker login -u $DOCKER_USER -p $DOCKER_PASSWORD && ./script.sh $0 $1