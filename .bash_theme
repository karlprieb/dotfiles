export PURE_PROMPT_SYMBOL="❯"

normal="\[\e[0m\]"
reset_color="\[\e[39m\]"

black="\[\e[0;30m\]"
red="\[\e[0;31m\]"
green="\[\e[0;32m\]"
yellow="\[\e[0;33m\]"
blue="\[\e[0;34m\]"
magenta="\[\e[0;35m\]"
cyan="\[\e[0;36m\]"
white="\[\e[0;37m\]"

bold_black="\[\e[30;1m\]"
bold_red="\[\e[31;1m\]"
bold_green="\[\e[32;1m\]"
bold_yellow="\[\e[33;1m\]"
bold_blue="\[\e[34;1m\]"
bold_magenta="\[\e[35;1m\]"
bold_cyan="\[\e[36;1m\]"
bold_white="\[\e[37;1m\]"

STATUS_THEME_PROMPT_BAD="${bold_red}$PURE_PROMPT_SYMBOL${reset_color}${normal} "
STATUS_THEME_PROMPT_OK="${bold_magenta}$PURE_PROMPT_SYMBOL${reset_color}${normal} "

current_branch () { echo -e "${black}$(git symbolic-ref --short HEAD 2>/dev/null)"; }
set_prompt () {
    local prompt="$( [ $? -eq 0 ] && echo -e "$STATUS_THEME_PROMPT_OK" || echo -e "$STATUS_THEME_PROMPT_BAD")"
    local first_line="${blue}\w $(current_branch)"
    export PS1="\n${first_line}\n${prompt}"
}

PROMPT_COMMAND="set_prompt"
