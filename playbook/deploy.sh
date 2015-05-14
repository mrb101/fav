#!/bin/sh

ansible-playbook playbook/deploy.yml -i playbook/hosts --private-key=$HOME/.vagrant.d/insecure_private_key
