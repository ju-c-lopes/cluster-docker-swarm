#!/bin/bash
sudo systemctl restart ssh
sudo apt-get install nfs-server -y
sudo apt-get install portmap -y
sudo docker swarm init --advertise-addr=192.168.56.18
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh
sudo docker volume create app

sudo echo "sudo apt-get install nfs-common -y" >> /vagrant/worker.sh
sudo echo "sudo apt-get install portmap -y" >> /vagrant/worker.sh
sudo echo "mkdir -p /var/lib/docker/volumes/app/_data" >> /vagrant/worker.sh
sudo echo "sudo mount 192.168.56.18:/var/lib/docker/volumes/app/_data /var/lib/docker/volumes/app/_data" >> /vagrant/worker.sh
sudo echo "sudo apt-get update && sudo apt-get upgrade -y" >> /vagrant/worker.sh

sudo apt-get update
sudo echo "/var/lib/docker/volumes/app/_data *(rw,sync,subtree_check)" >> /etc/exports
sudo exportfs -ar
sudo apt-get update && sudo apt-get upgrade -y
