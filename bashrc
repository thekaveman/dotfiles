#!/usr/bin/env bash

echo "Loaded .bashrc"

# Functions
source ~/.shell/functions.sh

# Settings
source ~/.shell/settings.sh

# Aliases
source ~/.shell/aliases.sh

# Custom prompt
source ~/.shell/prompt.sh

# Git completion
source ~/.shell/git-completion.sh

# Bash completion
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi
