# These git functions deeply borrowed
function parse_git_dirty() {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo -e "\033[1;31m*\033[m"
}

function parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w \[\033[1;35m\][\$(parse_git_branch)\[\033[1;35m\]]\[\033[m\] $ "


export CLICOLOR=1

# General Postgresql config
export PGTZ=pst8pdt

# Add cargo
export PATH="$HOME/.cargo/bin:$PATH"
# Add yarn
export PATH="$HOME/.yarn/bin:$PATH"

# Add Stack installed items
export PATH=~/.local/bin:$PATH
# Export Carp directory
export CARP_DIR=~/Carp/



alias ls='ls -GFh'
alias dmlTS='date +%Y%m%d%H%M%S'
alias fregec='~/frege/fregec.jar'

