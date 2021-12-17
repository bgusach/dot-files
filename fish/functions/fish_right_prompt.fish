# Copied from https://github.com/oh-my-fish/theme-default and adapted
# Original license: LICENSE-omf-default-theme

function fish_right_prompt
  set_color $fish_color_autosuggestion 2> /dev/null; or set_color 555
  date "+%H:%M:%S"
  set_color normal
end
