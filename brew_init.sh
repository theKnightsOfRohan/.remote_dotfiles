#!/usr/bin/bash

packages=(
    "csvlens"
    "gcc"
    "gh"
    "git"
    "glow"
    "gradle"
    "lazygit"
    "libgit2"
    "make"
    "neofetch"
    "neovim"
    "node"
    "pkg-config"
    "powerlevel10k"
    "qt@5"
    "ripgrep"
    "tldr"
    "tree"
    "wget"
    "zig"
    "zsh-autosuggestions"
    "zsh-syntax-highlighting"
)

brew install "${packages[@]}"
