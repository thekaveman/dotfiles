#! /bin/bash

if [[ "$OSTYPE" =~ "darwin" ]]; then
    brew install python@3.12 python@3.13
elif [[ "$OSTYPE" =~ "linux" ]]; then
    sudo add-apt-repository -y ppa:deadsnakes/ppa && sudo apt update
    sudo apt install -yqq python3.12 python3.12-venv \
                          python3.13 python3.13-venv
    # add user to group allowing device access for CircuitPy
    sudo adduser $USER dialout
fi

if [ ! -f "~/.venv12" ]; then
    /usr/bin/python3.12 -m venv ~/.venv12
fi

if [ ! -f "~/.venv13" ]; then
    /usr/bin/python3.13 -m venv ~/.venv13
fi
