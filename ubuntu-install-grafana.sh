#!/bin/bash

sudo apt update -y
sudo apt-get install -y gnupg2 curl software-properties-common
curl https://packages.grafana.com/gpg.key | sudo apt-key add -
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"
sudo apt-get update -y
sudo apt-get -y install grafana
sudo systemctl enable --now grafana-server
sudo ufw allow 3000/tcp
