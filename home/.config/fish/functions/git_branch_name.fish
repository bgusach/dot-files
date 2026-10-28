# Copied from https://github.com/oh-my-fish/oh-my-fish and adapted
# Original license: LICENSE-oh-my-fish

function git_branch_name -d "Get current branch name"
  git_is_repo; and begin
    command git symbolic-ref --short HEAD 2> /dev/null;
      or command git show-ref --head -s --abbrev | head -n1 2> /dev/null
  end
end
