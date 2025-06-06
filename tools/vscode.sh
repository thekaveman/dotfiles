#! /bin/bash

if [[ "$OSTYPE" =~ "darwin" ]]; then
    brew install --cask visual-studio-code
elif [[ "$OSTYPE" =~ "linux" ]]; then
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    sudo apt update && sudo apt install -yqq code
fi
