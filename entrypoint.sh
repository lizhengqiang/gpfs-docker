#!/bin/bash

export IPFS_PATH=/app/data

echo $IPFS_PATH
echo $HOST_IP
echo $API_PORT
echo "init"

/gpfs init 
/gpfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["http://$HOST_IP:$API_PORT", "http://localhost:3000", "http://127.0.0.1:5001"]'
/gpfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "POST"]'

echo $MINER_ADDRESS
echo "start"
/gpfs daemon --init --miner-address=$MINER_ADDRESS