#!/bin/sh

DATA_PATH=$(bashio::config '.data_path')

# Copy example configuration if not exists
if [ ! -f $DATA_PATH/configuration.yaml ]; then
  cp ./configuration.yaml.example $DATA_PATH/configuration.yaml
fi

python ./s0pcm-reader.py -c $DATA_PATH

if [ -f $DATA_PATH/.noexit ]; then
  sleep 7d
fi