#! /bin/bash

# Python and CircuitPy setup

sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt update

# install more versions of Python: 3.11-3.13
sudo apt install -y python3.11 python3.11-venv python3.12 python3.12-venv python3.13 python3.13-venv

# default 'python' command to Python 3.11
sudo ln -s /usr/bin/python3.11 /usr/bin/python

# add user to group allowing device access for CircuitPy
sudo adduser $USER dialout
