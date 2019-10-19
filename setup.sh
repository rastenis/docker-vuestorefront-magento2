#!/bin/sh

# get git, docker, pull docker compose selfcontained or not
apt-get update 
apt-get install git docker.io docker-compose -y 

# cloning/updating vue-storefront and vue-storefront-api
for SOURCE in "vue-storefront" "vue-storefront-api"
do
  if [ ! -d $SOURCE/.git ]
   then
	git clone https://github.com/DivanteLtd/$SOURCE.git

   else
    echo "Please ensure clean working directory before setting up, or run start.sh if you have already run setup.sh."
    exit 1
  fi

done

# default configs
cp ./vue-storefront/config/{default,local}.json

# building
docker-compose build 
docker-compose up 