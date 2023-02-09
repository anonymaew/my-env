# My environment config

My dev config for UNIX environment, so that I have the same favorite-reproducible-environment on all devices I work on.\
<sub><sub>You shouldnt care to this. I put this on github so that it wont be lost and I forgot how to install them, thats all</sub></sub>

## What I use

- [Zsh](https://www.zsh.org/) for a better shell, along with [powershell10k](https://github.com/romkatv/powerlevel10k) pimping my terminal
- [Vim](https://www.vim.org/) because why not
- [Tmux](https://github.com/tmux/tmux/wiki) for switchable-multi-windows hacker vibe

## Prerequisite

Assuming you already installed `git`, `zsh`, `vim`, and `tmux` with your favorite choice of package manager.

## Installation

It basically ~copy~ overwrite config files to the machine and automatically install them. The script is safe <sub><sub>trust me bro</sub></sub>

```bash
git clone --depth=1 https://github.com/anonymaew/my-env.git ./myenv
cd myenv
chmod +x install.sh
./install.sh
```
