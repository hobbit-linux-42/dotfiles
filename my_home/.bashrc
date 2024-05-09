#
# ~/.bashrc
#
[[ $- != *i* ]] && return
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
[[ "$(whoami)" = "root" ]] && return
[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
echo ""
alias ls="ls --color"
export LS_COLORS="di=0;33:ln=0;34:ex=1;35:*.py=0;32:*.cpp=0;32:*.rs=0;32:*.go=0;32"
#export PS1="\[\e[30;41m\][\[\e[m\]\[\e[36m\]\A\[\e[m\]:\[\e[33m\]\w\[\e[m\]_\[\e[32m\]\\$\[\e[m\]\[\e[41m\]]\[\e[m\] "
export PS1="\[\e[34m\]--------------[\[\e[m\]\[\e[36m\]\t\[\e[m\] @ \[\e[33m\]\W\[\e[m\]\[\e[34m\]]\[\e[m\]\n\[\e[34m\]------\[\e[m\]\[\e[32m\]\\$\[\e[m\] "
#pfetch
colorscript -e 30
alias dst='shred -n 10 -z -u'
alias lgrep='ls . | grep '
alias vbox='sudo modprobe vboxdrv; virtualbox &' 
alias boom='while true; do $TERM & sleep 0; done'
alias pi='bat /home/gian42/pi'
alias fix_interuppted_pacman='sudo rm /var/lib/pacman/db.lck'
alias clea='echo correcting with clear; sleep 0.5; clear'

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
