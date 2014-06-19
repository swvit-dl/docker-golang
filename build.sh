#/bin/bash

if [ ! -f ./go1.2.linux-amd64.tar.gz ]; then
  wget https://go.googlecode.com/files/go1.2.linux-amd64.tar.gz 
  tar -v -C ./ -xzf ./go1.2.linux-amd64.tar.gz
fi

docker build -t swvitaliy/golang .
