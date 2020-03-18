#!/bin/bash

cat docker/.bashrc.dist > docker/.bashrc && \
cat docker-compose.yaml.dist > docker-compose.yaml && \
source docker/.bashrc && \
nvm install v12 && \
./docker/bin/create_cert.sh && \
rm project/.gitignore && \
rm -rf .git && \
rm project-init.sh && \
ls -la
