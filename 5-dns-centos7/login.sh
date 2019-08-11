#!/usr/bin/env bash

if [ -z "$1" ]
  then
    echo "Please provide the node number, such as ./login.sh 1"
    exit 1
fi


theHost="5-dns-centos7-$1.vagrant.local"

ssh "vagrant@$theHost"