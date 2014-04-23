# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
    config.vm.box = "hashicorp/precise64"
    config.vm.synced_folder ".", "/opt/kitchen-sink"
    # config.vm.provision "shell", path: "./setup/startup.sh"
    config.vm.provision "ansible" do |ansible|
        ansible.sudo = true
        ansible.playbook = "playbooks/playbook.yml"
    end
end
