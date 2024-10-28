#! /bin/bash

if [[ "$OSTYPE" =~ "darwin" ]]; then
    if [ ! -f "/opt/homebrew/bin/brew" ]; then
        curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
    fi

    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
