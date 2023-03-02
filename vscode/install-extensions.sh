#!/usr/bin/env bash
#
# install VS Code extensions listed ./extensions

set -ex

# make sure code is installed
if not which code &> /dev/null; then
    echo "VS Code was not found"
    exit 1
fi

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
extensions="$here/extensions"

while read ext; do
    code --install-extension "$ext"
done < "$extensions"
