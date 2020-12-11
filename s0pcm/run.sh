#!/bin/bash

CONFIG_PATH=/data/options.json

DATA_PATH=$(jq --raw-output '.data_path' $CONFIG_PATH)
# Copy example configuration if not exists
if [ ! -f $DATA_PATH/configuration.yaml ]; then
  cp ./configuration.yaml.example $DATA_PATH/configuration.yaml
fi


# Start s0pcmreader
echo "[INFO] Start S0PCM Reader"
python ./s0pcm-reader.py -c $DATA_PATH
S0PCMREADER_PID=$!


if [ -f $DATA_PATH/.noexit ]; then
  sleep 7d
fi