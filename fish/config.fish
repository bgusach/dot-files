# Symlink to ~/.config/fish/config.fish

alias ll "ls -lh --color=auto"
alias vim "nvim"
alias gpg "gpg2"
alias xstart "xdg-open"

set FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'


set -x PATH "/$HOME/.pyenv/bin" $PATH
status --is-interactive; and . (pyenv init -|psub)
status --is-interactive; and . (pyenv virtualenv-init -|psub)

set -x PATH "/snap/bin" $PATH
# fish_vi_key_bindings
# bind -M insert \cf accept-autosuggestion

set -x PATH "$HOME/miniconda3/bin" $PATH
source (conda info --root)/etc/fish/conf.d/conda.fish

