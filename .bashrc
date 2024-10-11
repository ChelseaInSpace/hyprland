# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

alias fetch="lolcat /home/marie/.config/nuts"
alias ll='ls -alF'
alias la='ls -A'
alias lr='ls -tr | tail'
alias icat='kitten icat'
alias dl='cd ~/Downloads'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias nnn='nnn -H -e'
alias hypr='cd ~/.config/hypr/'
alias vimh='vim ~/.config/hypr/hyprland.conf'
alias vimb='vim ~/.bashrc'
alias editn='vim ~/.config/neofetch/config.conf'
alias editk='vim ~/.config/kitty/kitty.conf'
alias spotify='flatpak run com.spotify.Client'
alias discord='flatpak run com.discordapp.Discord'

C_BLACK='\e[0;30m'
C_RED='\e[0;31m'
C_GREEN='\e[0;32m'
C_GREENB='\e[1;32m'
C_YELLOW='\e[0;33m'
C_BLUE='\e[0;34m'
C_BLUEB='\e[1;34m'
C_MAGENTA='\e[0;35m'
C_MAGENTAB='\e[1;35m'
C_CYAN='\e[0;36m'
C_GRAY='\e[0;90m'
C_WHITE='\e[0;97m'
C_LBLUE='\e[0;94m'
C_LCYAN='\e[0;96m'
CB_BLUE='\e[44m'
CB_CYAN='\e[46m'
CB_LBLUE='\e[104m'
CB_LCYAN='\e[106m'
CB_WHITE='\e[107m'
C_END='\e[0m'

check_path () {
	PS1="$C_MAGENTAB[\t]$C_END"
	if [[ "$PWD" -ef "$HOME" ]]; then 
		PS1+="\n$C_BLUEB\w$C_END 󰁔 "
	else
		PS1+=" $C_BLUEB\w\n$C_END  󱞩 "
	fi
	PS1+="$C_GREEN\u@\h$C_END$C_BLUE\$$C_END "
}			

#PS1="$C_BLACK$CB_BLUE$C_WHITE$CB_BLUE \t $C_BLUE$CB_LBLUE$C_WHITE$CB_LBLUE \u@\h $C_LBLUE$CB_CYAN$C_BLACK$CB_CYAN \w $C_CYAN$CB_LCYAN$C_BLACK$CB_LCYAN \$ $C_LCYAN$C_END "

PROMPT_COMMAND='check_path'

export VISUAL=vim
export EDITOR="$VISUAL"
