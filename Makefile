.PHONY: all setup install_dependencies clone_nvim setup_zsh_plugins

all: setup install_dependencies clone_nvim setup_zsh_plugins

install: install_dependencies clone_nvim setup_zsh_plugins

setup:
        @echo "Cloning dotfiles repository..."
        git clone https://github.com/NVME-git/dotfiles.git
        sudo apt install -y stow
        cd ~/dotfiles && stow .
        cd ~

install_dependencies:
        @echo "Installing system dependencies..."
        sudo apt install -y tldr bat eza fzf zsh git gh tmux ripgrep

clone_nvim:
        @echo "Downloading and installing Neovim..."
        curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
        chmod u+x nvim.appimage
        ./nvim.appimage --appimage-extract
        ./squashfs-root/AppRun --version
        sudo mv squashfs-root /
        sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

setup_zsh_plugins:
        @echo "Setting up Zsh plugins..."
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
        git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
