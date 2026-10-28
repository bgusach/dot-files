# Inspired by https://github.com/oh-my-fish/theme-default

function fish_right_prompt
  # Prints the last command duration in a hooman-readable way
  if not set -q CMD_DURATION
    return
  end

  set -l secs (math --scale=0 "$CMD_DURATION / 1000")

  if test $secs -eq 0
    return
  end

  set -l mins (math --scale=0 "$secs / 60")
  set secs (math "$secs % 60")

  set -l hours (math --scale=0 "$mins / 60")
  set mins (math "$mins % 60")

  set_color $fish_color_autosuggestion 2> /dev/null; or set_color 555

  if test $hours -gt 0
    echo -ns $hours h
  end

  if test $mins -gt 0
    echo -ns $mins m
  end

  echo -ns $secs s

  set_color normal
end
