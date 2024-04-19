#!/usr/bin/env bash
#
# install VS Code extensions listed ./extensions

set -ex

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
extensions="$here/extensions"

while read ext; do
    code --install-extension "$ext"
done < "$extensions"
