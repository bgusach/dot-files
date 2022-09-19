# $PWD must be parent of this file!

# Fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
chsh --shell `which fish`

ln --force $PWD/config.fish ~/.config/fish/conf.d/config.fish
ln --symbolic $PWD/fish/functions ~/.config/fish
echo "Log out and in again"

# Git
sudo apt install --yes git
ln --force $PWD/git/gitconfig ~/.gitconfig
ln --force $PWD/git/gitignore-global ~/.gitignore-global
mkdir --parents ~/.local/bin

# Use 'fd diff-highlight /usr' if this path changes...
ln -s /usr/share/doc/git/contrib/diff-highlight/diff-highlight ~/.local/bin/diff-highlight
sudo chmod +x ~/.local/bin/diff-highlight


# Other goodies
sudo apt install -y ripgrep
sudo apt install -y neovim
sudo apt install -y fd-find
sudo apt install -y fzf
sudo apt install -y python3-pip
