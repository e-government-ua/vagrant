Vagrant.configure("2") do |config|

  #
  # Run Ansible from the Vagrant Host
  #
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.network "private_network", ip: "192.168.10.10"
  config.ssh.insert_key = false
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "./ansible/site.yml"
    ansible.inventory_path = "./ansible/hosts"
    ansible.limit = "tomcat-servers"
    #ansible.raw_arguments  = "-vvv"
  end
end