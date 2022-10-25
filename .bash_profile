#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#alias so='source .bashrc'
#alias v='nvim'
#alias vim='nvim'
#alias f='fish'
#alias r='ranger'
#alias pow='sudo poweroff'
#alias reb='sudo reboot'
#
#export PATH=$PATH:$HOME/.scripts
#export EDITOR="nvim"
#export VISUAL="nvim"
#export BROWSER="qutebrowser"
#export terminal="st"
#
if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep dwm || startx
fi
