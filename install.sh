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
cp -r ./.zshrc ~/
cp -r ./.p10k.zsh ~/
cp -r ./.vimrc ~/
cp -r ./.tmux.conf ~/

# Install powerlevel10k
rm -rf ~/.zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k

# Install vim-plug
rm -rf ~/.vim
git clone --depth=1 https://github.com/junegunn/vim-plug.git ~/.vim/autoload
echo "Plug install"
vim -es -u .vimrc -i NONE -c "PlugInstall" -c "qa"

# Install tpm
rm -rf ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins
