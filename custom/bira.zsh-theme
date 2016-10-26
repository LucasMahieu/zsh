# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg_bold[magenta]%}%? ↵%{$reset_color%})"

local user_host='%{$fg_bold[magenta]%}%n%{$fg[white]%}@%{$fg[red]%}%m%{$reset_color%}'
local current_dir='%{$fg[white]%}>%{$fg_no_bold[green]%}%~%{$reset_color%}'
#local rvm_ruby=''
#if which rvm-prompt &> /dev/null; then
#  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
#else
#  if which rbenv &> /dev/null; then
#    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
#  fi
#fi
local git_branch='$(git_prompt_info)%{$reset_color%}'

#PROMPT="╭─${user_host} ${current_dir} ${rvm_ruby} ${git_branch}

PROMPT="╭─${user_host}${current_dir} ${git_branch}
╰─%B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
