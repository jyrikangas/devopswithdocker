FROM docker:cli

COPY . .

ENTRYPOINT /bin/sh docker login -u $DOCKER_USER -p $DOCKER_PASSWORD
CMD ./script.sh