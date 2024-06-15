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
#export PS1="\[\e[34m\]--------------[\[\e[m\]\[\e[36m\]\t\[\e[m\] @ \[\e[33m\]\W\[\e[m\]\[\e[34m\]]\[\e[m\]\n\[\e[34m\]------\[\e[m\]\[\e[32m\]\\$\[\e[m\] "
PROMPT_COMMAND='PS1_CMD1=$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR == 1{ split($2, a," ");print a[1]}'"'"')'; PS1=' \[\e[38;5;178m\][\[\e[38;5;140m\]\T\[\e[38;5;178m\]]-[\[\e[38;5;113m\]${PS1_CMD1}\[\e[38;5;178m\]]-[\[\e[38;5;202;1m\]\W\[\e[0;38;5;178m\]]\n\[\e[0m\] \[\e[38;5;178m\](\[\e[38;5;66m\]$?\[\e[38;5;220m\])\[\e[38;5;90m\]>\[\e[38;5;162m\]>\[\e[38;5;197m\]>\[\e[0m\] '
pfetch
#colorscript -e 30
alias dst='shred -n 10 -z -u'
alias vbox='sudo modprobe vboxdrv; virtualbox &' 
alias boom='while true; do $TERM & sleep 0; done'
alias pi='bat /home/gian42/pi'
alias fix_interuppted_pacman='sudo rm /var/lib/pacman/db.lck'
alias clea='echo correcting with clear; sleep 0.8; clear'
alias local-scan="nmap -sP 192.168.$(route -n | awk '{print $2}' | grep 192.168. | awk -F '.' '{print $3}').1/24"
#eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source ~/.colors
alias color_list="bat .colors"
HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory


