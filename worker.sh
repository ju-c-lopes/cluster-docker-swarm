    docker swarm join --token SWMTKN-1-5v9aimylbfvdltok71lxt6dgy0ddfqc0ma93mmsj8eyrmv28xp-9qryzukrwjhw4jdonzzcwahzo 192.168.56.18:2377
sudo apt-get install nfs-common -y
sudo apt-get install portmap -y
mkdir -p /var/lib/docker/volumes/app/_data
sudo mount 192.168.56.18:/var/lib/docker/volumes/app/_data /var/lib/docker/volumes/app/_data
sudo apt-get update && sudo apt-get upgrade -y
