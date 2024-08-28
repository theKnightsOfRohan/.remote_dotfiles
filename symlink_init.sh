#!/usr/bin/bash

dotfiles=(
    ".config"
    ".bashrc"
    ".ssh"
)

for df in $dotfiles; do
    src_path="$HOME/.dotfiles/files/$df"

    tgt_path="$HOME/$df"

    if [ -L "$tgt_path" ] && [ -e "$(readlink "$tgt_path")" ]; then
        echo "$df symlink already exists and is valid"
    else
        echo "$df symlink does not exist or is invalid"

        ln -sf "$src_path" "$tgt_path"

        echo "Symlinked $df"
    fi
done
