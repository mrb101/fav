# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
    config.vm.define :Web do |web_config|
        web_config.vm.box = "hashicorp/trusty64"
        web_config.vm.forward_port 80, 8080
        web_config.vm.network :bridged
        web_config.vm.network :hostonly, "192.168.100.10"
        web_config.vm.provision :ansible do |ansible|
            ansible.playbook = "playbook/webserver.yml"
            ansible.hosts = "webservers"
        end
    end
    config.vm.define :db do |db_config|
        db_config.vm.box = "hashicorp/trusty64"
        db_config.vm.forward_port 5432, 54322
        db_config.vm.network :bridged
        db_config.vm.network :hostonly, "192.168.100.20"
        db_config.vm.provision :ansible do |ansible|
            ansible.playbook = "playbook/dbserver.yml"
            ansible.hosts = "dbservers"
        end
    end
end
