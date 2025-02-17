#!/bin/bash

echo "================================================"
echo "--------------- Link Panel ---------------------"
echo "----- Automated install script with Docker -----"
echo "================================================"

SECONDS=0

echo "$(date)"
docker --version
rm -rf vendor
rm -f composer.lock
cp .env-sail .env

#docker-compose stop database &
#sleep 15
#wait
#docker volume rm linkpanelpanel_db-store &
#wait
##docker-compose start database &
#wait
#docker-compose restart php

# docker compose up
composer install
php artisan install --ready

echo "$(date)"
duration=$SECONDS
echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
