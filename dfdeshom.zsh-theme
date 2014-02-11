if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='$(virtualenv_prompt_info)%{${fg_bold[green]}%}%m %{$reset_color%}%{${fg_bold[blue]}%}%3~ $(git_prompt_info) $(git_prompt_status)%{${fg_bold[$CARETCOLOR]}%}$%{${reset_color}%} '

RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN="" 

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[yellow]%}*"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[magenta]%}➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[yellow]%}═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[cyan]%}?"
