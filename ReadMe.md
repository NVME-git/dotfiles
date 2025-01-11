# Dotfiles

by Nabeel Vandayar

## Download

- Download the repository and save it at `~/dotfiles`
- Remove the `.git` folder so you can add your own version control.

## Install programs
- stow 
- tldr 
- bat 
- eza 
- fzf 
- zsh 
- git 
- gh 
- tmux 
- ripgrep

For Ubuntu:
```bash
sudo apt install stow tldr bat eza fzf zsh git gh tmux ripgrep
```
## Stow repo
```bash
cd ~/dotfiles
stow .
```

## Install plugins

- [oh-my-zsh] (https://github.com/ohmyzsh/ohmyzsh)
    - Allow oh-my-zsh to set zsh as the default shell.
- [zsh-completions] (https://github.com/zsh-users/zsh-completions)
- [zsh-autosuggestions] (https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting] (https://github.com/zsh-users/zsh-syntax-highlighting)
- [powerlevel10k] (https://github.com/romkatv/powerlevel10k)

### tmux TPM?????
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
