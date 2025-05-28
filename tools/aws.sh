#! /bin/bash

if [[ "$OSTYPE" =~ "darwin" ]]; then
    brew install awscli
elif [[ "$OSTYPE" =~ "linux" ]]; then
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscli.zip"
    unzip awscli.zip
    ./aws/install
    rm -rf aws awscli.zip
fi
