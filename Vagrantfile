# -*- mode: ruby -*-
# vi: set ft=ruby  :

Vagrant.configure("2") do |config|
    config.vm.define "master" do |master|
        master.vm.box = "bento/ubuntu-22.04"
        master.vm.hostname = "master"
        master.vm.network "private_network", ip: "192.168.56.18"
        master.vm.provider "virtualbox" do |vb|
            vb.name = "master"
            vb.memory = "1024"
            vb.cpus = "1"
        end
        master.vm.provision "shell", path: "docker.sh"
        master.vm.provision "shell", path: "master.sh"
    end

    (1..3).each do |i|
        config.vm.define "node0#{i}" do |node|
            node.vm.box = "bento/ubuntu-22.04"
            node.vm.hostname = "node0#{i}"
            node.vm.network "private_network", ip: "192.168.56.#{17 + i}"
            node.vm.provider "virtualbox" do |vb|
                vb.name = "node0#{i}"
                vb.memory = "1024"
                vb.cpus = "1"
            end
            node.vm.provision "shell", path: "docker.sh"
            node.vm.provision "shell", path: "worker.sh"
        end
    end

    config.vm.define "master" do |master|
        master.vm.provision "shell", path: "master-after.sh"
    end
end
