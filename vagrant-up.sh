#!/bin/bash

vagrant init ubuntu/focal64

cat <<EOF > Vagrantfile
Vagrant.configure("2") do |config|
  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/focal64"
    master.vm.hostname = "master"
    master.vm.network "private_network", ip: "192.168.56.4"
    master.vm.network "forwarded_port", guest: 80, host: 8085
  end

    # Next I configure my  Slave server
  config.vm.define "slave" do |slave|
    slave.vm.box = "ubuntu/focal64"
    slave.vm.hostname = "slave"
    slave.vm.network "private_network", ip: "192.168.56.5"
    slave.vm.network "forwarded_port", guest: 80, host: 8086
  end
end

EOF

vagrant up