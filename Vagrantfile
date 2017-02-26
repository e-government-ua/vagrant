$install_ansible = <<SCRIPT
apt-get -y install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get -y update
apt-get -y install ansible
SCRIPT

Vagrant.configure("2") do |config|
  #
  # Run Ansible from the Vagrant Host
  #
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.network "private_network", ip: "192.168.10.10"
  config.vm.synced_folder "project", "/project"
  config.vm.synced_folder "ansible", "/ansible"
  config.ssh.insert_key = false

  if Vagrant::Util::Platform.windows?
      config.vm.provision "shell", inline: $install_ansible
      config.vm.provision "shell", inline: "ansible-playbook -i /ansible/hosts -l tomcat-servers /ansible/site.yml --connection=local"
  else
    config.vm.provision "ansible" do |ansible|
      ansible.playbook = "ansible/site.yml"
      ansible.inventory_path = "ansible/hosts"
      ansible.limit = "tomcat-servers"
      # ansible.raw_arguments  = "-vvv"
    end
  end
end
