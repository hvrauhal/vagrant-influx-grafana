#!/usr/bin/env ruby

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network "forwarded_port", :guest => 8083, :host => 8083
  config.vm.network "forwarded_port", :guest => 8086, :host => 8086
  config.vm.network "forwarded_port", :guest => 8090, :host => 8090
  config.vm.network "forwarded_port", :guest => 8099, :host => 8099
  config.vm.network "forwarded_port", :guest => 80, :host => 8080
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  config.ssh.forward_agent = true

  cmd = "bash /vagrant/config.sh"

  config.vm.provision :shell, :inline => cmd
end
