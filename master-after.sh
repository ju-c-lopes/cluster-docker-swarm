#!/bin/bash
sudo docker service create --name meu-app --replicas 15 -dt -p 80:80 --mount type=volume,src=app,dst=/usr/local/apache2/htdocs/ httpd
sudo cp /vagrant/index.html /var/lib/docker/volumes/app/_data/index.html
sudo cp /vagrant/style.css /var/lib/docker/volumes/app/_data/style.css
sudo docker node update --availability drain master
sudo apt-get update && sudo apt-get upgrade -y
sudo docker service ps meu-app
