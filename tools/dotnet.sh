#! /bin/bash

if [[ "$OSTYPE" =~ "darwin" ]]; then
    brew install dotnet
elif [[ "$OSTYPE" =~ "linux" ]]; then
    wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
    chmod +x ./dotnet-install.sh
    ./dotnet-install.sh --version latest
    rm -f ./dotnet-install.sh
    dotnet tool install -g git-credential-manager
    dotnet tool update -g git-credential-manager
    git-credential-manager configure
fi
