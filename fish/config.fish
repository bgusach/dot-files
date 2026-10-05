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

set -x RIPGREP_CONFIG_PATH $HOME/.config/ripgrep

fish_add_path "$HOME/.local/bin"

fish_vi_key_bindings
# bind -M insert \cf accept-autosuggestion

# Bind reverse search to <ctrl-h> (history), so that <ctrl-r> can be used within neovim terminal mode
bind -M insert \ch fzf-history-widget

# Abbreviations
abbr --add j --position=command just

abbr --add g --position=command git
abbr --add gc --position=command --set-cursor 'git commit --all -m "%"'
abbr --add ga --position=command git add
abbr --add gaa --position=command git add --all
abbr --add gr --position=command git restore
abbr --add gr --position=command 'git restore "*"'
abbr --add gu --position=command git unstage
abbr --add gua --position=command 'git unstage "*"'
abbr --add gl --position=command git log
abbr --add gs --position=command git switch
abbr --add gsu --position=command git summary
abbr --add gf --position=command git fetch
abbr --add gm --position=command git merge
abbr --add gp --position=command git push
abbr --add gd --position=command git diff
abbr --add gds --position=command git diff --staged
abbr --add gb --position=command git branch
