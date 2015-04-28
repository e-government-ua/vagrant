# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty32"

  #config.vm.box = "chef/debian-7.7"
  config.vm.network "private_network", ip: "192.168.10.10"
  config.vm.synced_folder "./project", "/project"
  config.ssh.insert_key = false

#  config.vm.provision :shell, path: "scripts/prepare_machine.sh"
# config.vm.provision :shell, privileged: false, path: "scripts/update_wf_fast.sh"

end
