# Dotfiles

by Nabeel Vandayar

## Download

- Download the repository and save it at `~/dotfiles`
- Remove the `.git` folder so you can add your own version control.

## Create symlinks
- Install [stow](https://www.gnu.org/software/stow/)

For Ubuntu
```bash
sudo apt install stow
```
- stow the repo 
```bash
cd ~/dotfiles
stow .
```

## Install other programs
- [tldr](https://github.com/tldr-pages/tldr)
- [bat](https://github.com/sharkdp/bat) 
- [eza](https://github.com/eza-community/eza) 
- [fzf](https://github.com/junegunn/fzf)
- [zsh](https://github.com/zsh-users/zsh)
- [git](https://github.com/git/git)
- [gh](https://github.com/cli/cli#installation) 
- [tmux](https://github.com/tmux/tmux) 
- [ripgrep](https://github.com/BurntSushi/ripgrep)

For Ubuntu:
```bash
sudo apt install tldr bat eza fzf zsh git gh tmux ripgrep
```
- [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-package)



## Install plugins

- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
    - Allow oh-my-zsh to set zsh as the default shell.
- [zsh-completions](https://github.com/zsh-users/zsh-completions)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [tmux plugin manager](https://github.com/tmux-plugins/tpm)

### tmux
```bash
tmux
```
<kbd>Ctrl</kbd> + <kbd>S</kbd> + <kbd>I</kbd>

## Configuration

### ZSH

(Optional) Set terminal environment variable: 
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
