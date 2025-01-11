# Dotfiles

by Nabeel Vandayar

## Download

Download the repository and save it at `~/dotfiles`

## Installation

### Install programs

```bash
sudo apt install stow tldr bat eza fzf zsh git gh tmux ripgrep
```

### Install plugins

#### oh-my-zsh 

```bash
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

#### powerlevel10k
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

#### tmux
```bash
tmux
```
<kbd>Ctrl</kbd> + <kbd>S</kbd> + <kbd>I</kbd>

### Stow dotfiles
```bash
cd ~/dotfiles
```

## Configuration

### ZSH

Set terminal environment variable: 
```bash
SHELL=/usr/bin/zsh

```
Source the ZSH configuration file:
```
source ~/.zshrc
```

### Github credentials

```zsh
gh auth login 
```
