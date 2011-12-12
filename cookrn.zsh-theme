# A custom prompt

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg_bold[blue]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
  if [ "$(whoami)" = "root" ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo "%{$fg_bold[blue]%}»%{$reset_color%}"; fi
}

function ruby_info {
  ruby_version=$(rvm current)
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX$ruby_version$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

PROMPT='%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%} $(prompt_char) '

RPROMPT='%{$reset_color%}$(ruby_info)$(git_prompt_info)'

