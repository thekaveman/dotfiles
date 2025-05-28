#! /bin/bash

if [[ "$OSTYPE" =~ "darwin" ]]; then
    brew install google-cloud-sdk
elif [[ "$OSTYPE" =~ "linux" ]]; then
    sudo rm -f /usr/share/keyrings/cloud.google.gpg
    curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list
    sudo apt update && sudo apt install -yqq google-cloud-cli
fi
