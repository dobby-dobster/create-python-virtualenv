#!/bin/bash

if [[ -z "$1" ]]; 
 then
  echo "No project defined, exiting"
  exit 1
 else
  virtualenv -p /usr/bin/python3 ~/virtualenv/$1
  ~/virtualenv/$1/bin/pip install -r requirements.txt
fi
