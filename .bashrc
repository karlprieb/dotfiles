# dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# alias
alias ls="ls -G"
alias la="ls -laG"
alias g="git"

# OS related
if [[ "$OSTYPE" == "darwin"* ]]; then
  export BASH_SILENCE_DEPRECATION_WARNING=1
fi

# path
if [ -d "/usr/local/opt/gettext/bin" ]; then
  export PATH="/usr/local/opt/gettext/bin:$PATH"
fi

if [ -d "/usr/local/sbin" ]; then
  export PATH="/usr/local/sbin:$PATH"
fi

if [ -d "usr/local/opt/openssl@1.1/bin" ]; then
  export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
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

# theme
if [ -f "${HOME}/.bash/theme.sh" ]; then
  source $HOME/.bash/theme.sh
fi

# git autocomplete
if [ -f "${HOME}/.bash/git-completion.sh" ]; then
  source $HOME/.bash/git-completion.sh
fi

# case insensitive autocomplete
bind 'set completion-ignore-case on'
