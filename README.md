# docker-vuestorefront-mangento2

Magento 2, Kibana, vue-storefront and vue-storefront-api all in one convenient package!

## Features

- Easy-start vue-storefront and vue-storefront-api initiation
- Optional automatic example data setup
- Automatic datapump integration

### Usage

Copy `envExample` and make the `env` file. The default values work fine. 

The barebones initiation + startup can be achieved by running `setup.sh`, found in the root directory. This will:
- Update required dependencies
- Fetch repositories for vue-storefront and vue-storefront-api
- Initiate the (default) vue-storefront config
- Perform the initial docker-compose build
- Map local.magento to 127.0.0.1

At this point, you will have a working Magento 2 instance that you can configure via the web setup interface by going to *local.magento*, an fresh, empty vue-storefront instance that can be accessed at localhost:3000, and Elasticsearch with Kibana reachable at localhost:5601.


Moreover, you can run `defaults.sh` to:
- Automatically setup Magento with the variables provided in the `env` file, 
- Switch to Elasticsearch as Magento's catalog indexer
- And insert sample data for vue-storefront

You now have:

Upon first opening kibana at localhost:5601, you will be asked for an index pattern. The pattern required is `vue_storefront*`.

### Services:

WIP
