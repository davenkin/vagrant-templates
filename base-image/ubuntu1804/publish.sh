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
rm -f ubuntu1804.box
vagrant package --output ubuntu1804.box
vagrant cloud publish davenkin/ubuntu1804 "$1" virtualbox ubuntu1804.box --release --force
rm -f ubuntu1804.box