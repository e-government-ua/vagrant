#!/bin/bash

if [ -d project ]; then
  cd project
  git pull
  cd ..
else
  git clone https://github.com/e-government-ua/i.git project --branch=test
fi

vagrant up --provision