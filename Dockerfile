# Container image that runs your code
FROM node:16

RUN npm install --global @raisely/cli --unsafe-perm exp

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
