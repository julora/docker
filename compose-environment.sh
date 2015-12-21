#! /bin/bash
docker-machine create robot -d virtualbox
eval $(docker-machine env robot)
docker-compose up
