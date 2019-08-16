#!/usr/bin/env bash

set -e
set -x

if [ -z "$1" ]
  then
    echo "Error: version specified. Example: ./publish.sh 2"
    exit 1
fi

vagrant cloud auth login
vagrant up --provision
rm -f centos7.box
vagrant package --output centos7.box
vagrant cloud publish davenkin/centos7 "$1" virtualbox centos7.box --release --force
rm -f centos7.box