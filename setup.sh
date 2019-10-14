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
    cd $SOURCE
    git pull
    cd ..
  fi

done

# setting up restoriations
echo "yarn restore" >> vue-storefront-api/docker/vue-storefront-api/vue-storefront-api.sh 
echo "yarn migrate" >> vue-storefront-api/docker/vue-storefront-api/vue-storefront-api.sh 

# default configs
cp ./vue-storefront/config/{default,local}.json

# starting
docker-compose up