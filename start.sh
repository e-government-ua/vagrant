#!/bin/bash

#rm -rf ./project 
#git clone https://github.com/e-government-ua/i.git ./project
#cd ./project/ && git checkout test
#touch .new
#cd ..
vagrant up
ansible-playbook ./ansible/site.yml -i ./ansible/hosts -vvv

