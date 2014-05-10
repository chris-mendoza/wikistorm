#!/bin/bash

rm -rf /var/www/wikistorm
cd /var/www && git clone git@github.com:chris-mendoza/wikistorm.git
mkdir /var/www/wikistorm/config
rsync -avz /var/www/config/* /var/www/wikistorm/config/
