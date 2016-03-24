# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  config.vm.define "django" do |django|
    django.vm.network "private_network", ip: "192.168.10.10"
    django.vm.provision "ansible" do |ansible|
      ansible.playbook = "ansible/django-playbook.yml"
    end
  end

  config.vm.define "proxy" do |proxy|
    proxy.vm.network "private_network", ip: "192.168.10.20"
    proxy.vm.provision "ansible" do |ansible|
      ansible.playbook = "ansible/proxy-playbook.yml"
    end
  end
end
