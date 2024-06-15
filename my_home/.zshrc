# ~/.zshrc
#

########################basic#setup####################################
[[ $- != *i* ]] && return
[[ "$(whoami)" = "root" ]] && return
[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions

export LS_COLORS="di=0;33:ln=0;34:ex=1;35:*.py=0;32:*.cpp=0;32:*.rs=0;32:*.go=0;32"
eval "$(starship init zsh)"

########################define#alias#################################

alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias ls="ls --color"
alias dst='shred -n 10 -z -u'
alias vbox='sudo modprobe vboxdrv; virtualbox &' 
alias boom='while true; do $TERM & sleep 0; done'
alias pi='bat /home/gian42/pi'
alias fix_interuppted_pacman='sudo rm /var/lib/pacman/db.lck'
alias clea='echo correcting with clear; sleep 0.8; clear'
alias local-scan="nmap -sP 192.168.$(route -n | awk '{print $2}' | grep 192.168. | awk -F '.' '{print $3}').1/24"
alias neofetch="fastfetch"
alias color_list="bat .colors"
source ~/.colors
HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

####################define#functions####################################

duck(){
	firefox "duckduckgo.com/?q="$1
}
rndfile(){
	touch $1
	if [ $# -eq 2 ]
	then
		sentences=$2
	
	elif [ $# -eq 1 ]
	then
		sentences=10
	fi
	for i in {0..$sentences}; do
		echo $(misfortune) >> $1
	done
}

#################import#plugins######################

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-autoswitch-virtualenv/autoswitch_virtualenv.plugin.zsh
source /usr/share/zsh-z/zsh-z.plugin.zsh
source /usr/share/zsh-history-substring-search/zsh-history-substring-search.zsh

################startup#decoratyons##################

echo ""
pfetch

##EOF##
