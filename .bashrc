shopt -s autocd
# dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# alias
alias ls="ls -G"
alias la="ls -laG"
alias g="git"

# OS related
[[ "$OSTYPE" == "darwin"* ]] && export BASH_SILENCE_DEPRECATION_WARNING=1

# path
[ -d "/usr/local/opt/gettext/bin" ] && export PATH="/usr/local/opt/gettext/bin:$PATH"

[ -d "/usr/local/sbin" ] && export PATH="/usr/local/sbin:$PATH"

[ -d "usr/local/opt/openssl@1.1/bin" ] && export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

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
[ -f "${HOME}/.bash/theme.sh" ] && source $HOME/.bash/theme.sh

# git autocomplete
[ -f "${HOME}/.bash/git-completion.sh" ] && source $HOME/.bash/git-completion.sh

# case insensitive autocomplete
bind 'set completion-ignore-case on'

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
