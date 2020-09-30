#!/bin/bash

# Conf
BASE_DIR="$(cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P)"
export JUPYTER_CONFIG_DIR=$BASE_DIR
export PYTHONPATH=$BASE_DIR

# Setup
cd $BASE_DIR
virtualenv env
source env/bin/activate
pip install -r requirements.txt

# Run
jupyter lab
