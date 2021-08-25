#!/bin/bash

mvn clean install
docker build . --tag keycloak-magic-link
docker-compose down
docker-compose up -d
docker-compose logs --follow
