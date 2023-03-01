# Prompt string adding current git branch and colors to pure bash
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export current_branch=$(git symbolic-ref --short HEAD)
# Colours in promt (Prompt string)
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

# Bash autocomplete based on history history
bind '"\e[B": history-search-backward'
bind '"\e[A": history-search-forward'
