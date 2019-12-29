# The prompt
PROMPT='%{$fg[magenta]%}[%c] ${time}%{$reset_color%} ➤ '
RPROMPT='%{$fg[magenta]%}$(git_prompt_info)%{$reset_color%}$(git_prompt_status)%{$reset_color%}'

# local time, color coded by last return code
time_enabled="%(?.%{$fg[green]%}.%{$fg[red]%})%*%{$reset_color%}"
time_disabled="%{$fg[green]%}%*%{$reset_color%}"
time=$time_enabled

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" 😏"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" 🙈"
ZSH_THEME_GIT_PROMPT_CLEAN=" 👌🏽"
ZSH_THEME_GIT_PROMPT_ADDED=" ✅"
ZSH_THEME_GIT_PROMPT_MODIFIED=" 📝"
ZSH_THEME_GIT_PROMPT_DELETED=" ❌"
ZSH_THEME_GIT_PROMPT_RENAMED=" ↪️"
ZSH_THEME_GIT_PROMPT_UNMERGED=" ⚠️"
ZSH_THEME_GIT_PROMPT_AHEAD=" 🔥"
ZSH_THEME_GIT_PROMPT_BEHIND=" 🐌"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg[magenta]%} ⑂"
ZSH_THEME_GIT_PROMPT_STASHED=" 👩🏻"
