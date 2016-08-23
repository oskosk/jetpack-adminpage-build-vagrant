# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.provision :shell, :path => "provision.sh", privileged: false

  # Configurations from 1.0.x can be placed in Vagrant 1.1.x specs like the following.

  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--memory", 2048]
    v.customize ["modifyvm", :id, "--cpus", 2]

    # Set the box name in VirtualBox to match the working directory.
    vvv_pwd = Dir.pwd
    v.name = File.basename(vvv_pwd)
  end

end
