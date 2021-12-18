# Copied from https://github.com/oh-my-fish/theme-default and adapted
# Original license: LICENSE-omf-default-theme

# You can override some default options with config.fish:
#
#  set -g theme_short_path yes

function git_is_repo -d "Check if directory is a repository"
  test -d .git
  or begin
    set -l info (command git rev-parse --git-dir --is-bare-repository 2>/dev/null)
    and test $info[2] = false
  end
end


function fish_prompt
  set -l last_command_status $status
  set -l cwd (prompt_pwd)

  set -l ahead    "↑"
  set -l behind   "↓"
  set -l diverged "⥄ "
  set -l dirty    "±"
  set -l none     "◦"

  set -l normal_color     (set_color normal)
  set -l success_color    (set_color $fish_pager_color_progress 2> /dev/null; or set_color cyan)
  set -l error_color      (set_color $fish_color_error 2> /dev/null; or set_color red --bold)
  set -l directory_color  (set_color $fish_color_quote 2> /dev/null; or set_color brown)
  set -l repository_color (set_color $fish_color_cwd 2> /dev/null; or set_color green)

  echo -n -s $directory_color $cwd $normal_color

  if git_is_repo
    echo -n -s " (" $repository_color (git_branch_name) $normal_color " "

    if git_is_touched
      echo -n -s $dirty
    else
      echo -n -s (git_ahead $ahead $behind $diverged $none)
    end

    echo -n -s ")"

  end

#  if test $last_command_status -eq 0
#    echo -n -s $success_color $fish $normal_color
#  else
#    echo -n -s $error_color $fish $normal_color
#  end

  echo -n -s " "
end
