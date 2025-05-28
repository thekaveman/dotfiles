#! /bin/bash

if [[ "$OSTYPE" =~ "darwin" ]]; then
    brew install azure-cli
elif [[ "$OSTYPE" =~ "linux" ]]; then
    #https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=script
    curl -L https://aka.ms/InstallAzureCli | bash
    source "$HOME/lib/azure-cli/az.completion"
fi
