#!/bin/bash


if [ -z "$1"] || [ -z "$2"]; 
 then
  echo "No python version or project defined, exiting"
  exit 1
 else
  virtualenv -p /usr/bin/python$1 ~/virtualenv/$2
  ~/virtualenv/$2/bin/pip install -r requirements.txt
fi
