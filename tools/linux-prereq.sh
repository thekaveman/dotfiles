#! /bin/bash

sudo apt update

if ! curl --version; then
    sudo apt install -qq curl
fi

if ! wget --version; then
    sudo apt install -qq wget
fi

if ! gpg --version; then
    sudo apt install -qq gnupg
fi

sudo apt install -qq apt-transport-https ca-certificates software-properties-common
