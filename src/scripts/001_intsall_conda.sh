#!/usr/bin/env bash

set -ex

# conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
# conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r

# conda create -q -y -n autogen_resume_writer python=3.11
# conda activate autogen_resume_writer

# conda install -q -y pytorch::pytorch

# conda env create -f environment.yml

# pip install -r requirements.txt
# pip install pytest-playwright
# playwright install --with-deps


echo "done"
