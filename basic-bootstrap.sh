# Fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
chsh --shell `which fish`

ln --force $PWD/config.fish ~/.config/fish/conf.d/config.fish
echo "Log out and in again"


# Git
sudo apt install --yes git
ln --force $PWD/git/gitconfig ~/.gitconfig
ln --force $PWD/git/gitignore-global ~/.gitignore-global

# Other goodies
sudo apt install --yes ripgrep
sudo apt install --yes neovim
sudo apt install --yes fd-find
sudo apt install --yes fzf

