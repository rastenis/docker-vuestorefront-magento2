# setting up restoriations
DOCKER_API_NAME=$(docker ps -aq -f name=api)
DOCKER_MAGENTO_NAME=$(docker ps -aq -f name=web)

# preparing sample data for vue-storefront
docker exec -it $DOCKER_API_NAME yarn restore
docker exec -it $DOCKER_API_NAME yarn migrate

# preparing magento2 setup
# ...
docker exec -it $DOCKER_MAGENTO_NAME install-magento

# opening kibana
echo "Defaults set up successfully. You can now open localhost:3000 for vue-storefront, local.magento for Magento 2, localhost:5601 for Kibana"
