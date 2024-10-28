#! /bin/bash

if [[ "$OSTYPE" =~ "darwin" ]]; then
    brew install python@3.9 python@3.10 python@3.11 python@3.12 python@3.13
elif [[ "$OSTYPE" =~ "linux" ]]; then
    sudo add-apt-repository -y ppa:deadsnakes/ppa && sudo apt update
    sudo apt install -y python3.9 python3.9-venv python3.10 python3.10-venv \
                        python3.11 python3.11-venv python3.12 python3.12-venv \
                        python3.13 python3.13-venv
    # default 'python' command to Python 3.12
    sudo ln -s /usr/bin/python3.12 /usr/bin/python
    # add user to group allowing device access for CircuitPy
    sudo adduser $USER dialout
fi
