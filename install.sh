#!/bin/bash

# TODO: install zsh, vim ,tmux

# Check Git is installed
if [ -z "$(which git)" ]; then
    echo "git is not installed"
    exit 1
fi

# Check zsh is installed
if [ -z "$(which zsh)" ]; then
    echo "zsh is not installed"
    exit 1
fi

# Check Vim is installed
if [ -z "$(which vim)" ]; then
    echo "vim is not installed"
    exit 1
fi

# Check Tmux is installed
if [ -z "$(which tmux)" ]; then
    echo "tmux is not installed"
    exit 1
fi

# Load config files
cp -r ./.* ~/

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k

# Install vim-plug
curl -fLo $(HOME_DIR)/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Sourcing tmux
tmux source ~/.tmux.conf
