# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
    config.vm.define :Web do |web_config|
        web_config.vm.box = "hashicorp/trusty64"
        web_config.vm.box_url = "https://vagrantcloud.com/hashicorp/boxes/precise32/versions/1.0.0/providers/virtualbox.box"
        web_config.vm.network "forwarded_port", guest: 80, host: 8080
        web_config.vm.network :private_network, ip: "192.168.100.10"
        
        web_config.vm.provision :ansible do |ansible|
            ansible.playbook = "playbook/webserver.yml"
        end
    end

    config.vm.define :db do |db_config|
        db_config.vm.box = "hashicorp/trusty64"
        db_config.vm.box_url = "https://vagrantcloud.com/hashicorp/boxes/precise32/versions/1.0.0/providers/virtualbox.box"
        db_config.vm.network "forwarded_port", guest: 5432, host:54322
        db_config.vm.network :private_network, ip: "192.168.100.20"

        db_config.vm.provision :ansible do |ansible|
            ansible.playbook = "playbook/dbserver.yml"
        end
    end
end
