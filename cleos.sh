#!/bin/bash

# Usage:
# Go into cmd loop: sudo ./cleos.sh
# Run single cmd:  sudo ./cleos.sh <cleos paramers>

PREFIX="docker-compose exec wallet cleos -u https://api.eosargentina.io --wallet-url http://127.0.0.1:8888"
if [ -z $1 ] ; then
  while :
  do
    read -e -p "cleos " cmd
    history -s "$cmd"
    exec $PREFIX $cmd
  done
else
  $PREFIX "$@"
fi
