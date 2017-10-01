# Symlink to ~/.config/fish/config.fish

alias ll "ls -lh --color=auto"
alias vim "nvim"
alias gpg "gpg2"

set FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'


set -x PATH "/home/troll/.pyenv/bin" $PATH
status --is-interactive; and . (pyenv init -|psub)
status --is-interactive; and . (pyenv virtualenv-init -|psub)

# fish_vi_key_bindings
# bind -M insert \cf accept-autosuggestion
