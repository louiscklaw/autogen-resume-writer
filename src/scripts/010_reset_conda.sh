#!/usr/bin/env bash

# set -ex

# conda config --add channels conda-forge
conda config --set always_yes yes
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r

conda env create -f environment.yml

playwright install --force chrome --with-deps

echo "done"
