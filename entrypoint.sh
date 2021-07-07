#!/bin/bash

IPFS_PATH=/app/data

echo $IPFS_PATH
echo $MINER_ADDRESS
echo "starting"

/gpfs daemon --init --miner-address=$MINER_ADDRESS