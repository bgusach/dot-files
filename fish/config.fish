# Symlink to ~/.config/fish/config.fish

alias ll "ls -lh --color=auto"
alias vim "nvim"
alias gpg "gpg2"

set FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'

# fish_vi_key_bindings
# bind -M insert \cf accept-autosuggestion
