# Symlink to ~/.config/fish/conf.d/config.fish

alias ll "ls -lh --color=auto"
alias vim "nvim"
alias gpg "gpg2"
alias xstart "xdg-open"
alias fd "fdfind"
alias bat "batcat"

set FZF_DEFAULT_COMMAND 'fd --type=f'
set FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
set FZF_ALT_C_COMMAND 'fd --type=d'


set -x PATH "$HOME/.local/bin" $PATH

# The standard fish functions dir is git-tracked. To be able to define functions
# without tracking them, add another dir.
set -x fish_function_path $fish_function_path "$HOME/.config/fish/additional-functions"

fish_vi_key_bindings
# bind -M insert \cf accept-autosuggestion

# Bind reverse search to <ctrl-h> (history), so that <ctrl-r> can be used within neovim terminal mode
bind -M insert \ch fzf-history-widget  

