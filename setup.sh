#!/bin/sh

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