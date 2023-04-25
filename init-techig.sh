#!/bin/bash

set -e

git clone https://github.com/trailofbits/algo.git
cd algo 

# openstacksdk is downgraded in requirements.txt, this also requires using python < 3.11, 3.9 confirmed working
python3 -m pip install --user --upgrade virtualenv
python3 -m virtualenv --python="$(command -v python3)" .env &&
  source .env/bin/activate &&
  python3 -m pip install -U pip virtualenv &&
  python3 -m pip install -r requirements.txt