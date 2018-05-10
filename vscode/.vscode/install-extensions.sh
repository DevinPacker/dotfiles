#! /usr/bin/env sh
cat "$HOME/.vscode/vscode-extensions.list" | xargs -L 1 code --install-extension
