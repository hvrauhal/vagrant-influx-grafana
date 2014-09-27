#!/bin/bash
sudo apt-get update -q
echo getting influxdb 
wget -q http://s3.amazonaws.com/influxdb/influxdb_latest_amd64.deb
sudo dpkg -i influxdb_latest_amd64.deb
sudo /etc/init.d/influxdb start
echo installing ngnix
sudo apt-get -qq install nginx
sudo /etc/init.d/nginx start
echo installing grafana
wget -q http://grafanarel.s3.amazonaws.com/grafana-1.8.0.tar.gz
tar -xzvf grafana-1.8.0.tar.gz
sudo mv grafana-1.8.0/* /usr/share/nginx/www/
sudo cp /vagrant/config.grafana.js /usr/share/nginx/www/config.js