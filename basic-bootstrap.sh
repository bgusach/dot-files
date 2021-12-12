# Fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
chsh --shell `which fish`
echo "Log out and in again"


# Git
sudo apt install --yes git
ln --symbolic --force $PWD/git/gitconfig ~/.gitconfig
ln --symbolic --force $PWD/git/gitignore-global ~/.gitignore-global

# Other goodies
sudo apt install --yes ripgrep
sudo apt install --yes neovim
sudo apt install --yes fd-find

