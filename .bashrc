# dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# alias
alias ls="ls -G"
alias la="ls -laG"
alias g="git"

# path
if [[ "$OSTYPE" == "darwin"* ]]; then
  export PATH="/usr/local/opt/gettext/bin:/usr/local/sbin:$PATH"
fi

# history search
if [[ $- == *i* ]]; then
  bind '"\e[A":history-search-backward'
  bind '"\e[B":history-search-forward'
fi

# asdf
if [ -d "${HOME}/.asdf" ]; then
  source $HOME/.asdf/asdf.sh
  source $HOME/.asdf/completions/asdf.bash
fi

# Pure theme bash
source $HOME/.bash_theme