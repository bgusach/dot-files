#/bin/bash
# $PWD must be parent of this file!

# Fish
echo ">>> Installing fish"
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
echo ">>> Setting fish as default shell (requires interaction)"
chsh --shell `which fish`

ln --symbolic $PWD/fish/config.fish ~/.config/fish/conf.d/config.fish
ln --symbolic $PWD/fish/functions ~/.config/fish/functions

echo ">>> Installing goodies"
# Git
sudo apt install -y git
ln -s $PWD/git/gitconfig ~/.gitconfig
ln -s $PWD/git/gitignore-global ~/.gitignore-global

# Other goodies
sudo apt install -y \
	ripgrep \
	neovim \ 
	fd-find \
	fzf \
	python3-pip \
	pre-commit \
	bat

echo "Go to https://github.com/dandavison/delta/releases and get delta"
