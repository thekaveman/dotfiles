#! /bin/bash

if [[ "$OSTYPE" =~ "darwin" ]]; then
    brew install dotnet
elif [[ "$OSTYPE" =~ "linux" ]]; then
    sudo apt install -yqq aspnetcore-runtime-7.0
    dotnet tool install -g git-credential-manager
    dotnet tool update -g git-credential-manager
    git-credential-manager configure
fi
