#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#	    . ~/.bash_aliases
#fi

#if [ -f ~/.bash_profile ]; then
#	    . ~/.bash_profile
#fi

# misc
gcom(){
	git add .
	git commit -m "$1"
}

gpush(){
	git add .
	git commit -m "$1"
	git push
}

# edit files
alias eho="sudo nvim /etc/hosts"

# change mouse click left to right
# xmodmap -e "pointer = 1 2 3" &
xmodmap -e "pointer = 3 2 1" 

xset r rate 300 50
# Change Capslock to ESC
setxkbmap -option caps:escape
wmname LG3D 

alias df="df -h -x squashfs -x tmpfs -x devtmpfs"
alias lsmount="mount | column -t"
alias extip="curl icanhazip.com"

# alias bi="sudo apt --fix-broken install"
# alias di="sudo dpkg -i"
# alias i="sudo apt install"
alias up="sudo pacman -Syu --noconfirm"
alias qs="sudo pacman -Qs | grep"
alias ui="sudo pacman -Rs"
alias i="sudo pacman --noconfirm -S"
alias mk="makepkg -si"
alias gc="git clone"
alias mks="rm config.h && sudo make clean install"

# top 5 processes that using most memory
alias mem5="ps auxf | sort -nr -k 4 | head -5"
alias cpu10="ps auxf | sort -nr -k 3 | head -10"
alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -"

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias so="source ~/.bashrc"
alias sox="source ~/.xinitrc"
alias v='nvim'
alias vim='nvim'
alias f='fish'
alias r='ranger'
alias h='history | dmenu -i -l 20 -p "history" | xclip -sel c'

# OS
alias pow='sudo poweroff'
alias reb='sudo reboot'
alias sus="sudo systemctl suspend;slock;"
alias full="sudo tlp fullcharge"
alias cal="cal 2022"
alias cam="ffplay /dev/video0"
alias rn="sudo systemctl restart NetworkManager"

export PATH=$PATH:$HOME/.local/bin:$HOME/.local/bin/custom:$HOME/.local/bin/statusbar:$HOME/.local/bin/tes
export PATH=$PATH:$HOME/.local/bin/image
#export PATH=$PATH$( find $HOME/.script/ -type d -printf ":%p" )
export PATH=$PATH:$HOME/.script/sfcode
export PATH=$PATH:$HOME/.script/database
export PATH=$PATH:$HOME/.script/otomation
export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="qutebrowser"
export terminal="st"

#if [[ "$(tty)" = "/dev/tty1" ]]; then
#	pgrep dwm || startx
#fi

PS1='[\u@\h \W]\$ '

#sample alias yt-dlp buat :
#1. file name {nama channel}-{title video}
#2. download video full hd lalu di merge (perlu install ffmpeg)

# Jump to folder
alias p="cd ~/Dropbox/Dataon/Project/"
alias d="cd ~/Dropbox"
alias o="cd ~/downloads"
alias a="cd ~/Dropbox/Dataon/"
alias s="cd ~/github/suckless/st"
alias w="cd ~/github/suckless/dwm"
alias b="cd ~/.local/bin"
alias c="cd ~/.local/config"
alias m="cd ~/marc"
alias cdf="cd ~/files"
alias n="cd ~/Dropbox/notes"
alias myp="cd ~/Dropbox/My\ Project"
alias dc="/home/mc/Dropbox/linux/dotfiles/.local/bin/custom"

# git
alias gs="git status"
alias gasa="cd ~/Documents/github/dotfiles/ && git add . && git commit -m 'add' && git push"
alias gass="cd ~/Documents/github/dataon/ && git add . && git commit -m 'add' && git push"
alias gasd="cd ~/Documents/github/tech/ && git add . && git commit -m 'add' && git push"
alias gasf="cd ~/Documents/github/personal/ && git add . && git commit -m 'add' && git push"
alias pushall="cd ~/Documents/github/dotfiles/ && git add . && git commit -m 'add' && git push cd ~/Documents/github/dataon/ && git add . && git commit -m 'add' && git push && cd ~/Documents/github/tech/ && git add . && git commit -m 'add' && git push && cd ~/Documents/github/personal/ && git add . && git commit -m 'add' && git push"
alias pullall="cd ~/Documents/github/dotfiles/ && git pull && cd ~/Documents/github/dataon/ && git pull && cd ~/Documents/github/tech/ && git pull && cd ~/Documents/github/personal/ && git pull"


alias gp="cd ~/Documents/ && yt-dlp -f '\''bestaudio'\'' "


alias tr="tmux attach -t ranger || tmux new -s ranger"
alias tv="tmux attach -t nvim || tmux new -s nvim"
alias td="tmux attach -t download || tmux new -s download"

alias ya="yt-dlp -o '%(channel)s_%(title)s.%(ext)s'\'' -f '\''bestaudio'\'' '"
#alias ya="yt-dlp -o '~/secondary/youtube/audio/%(channel)s_%(title)s.%(ext)s' -f 'bestaudio' "
alias ys="yt-dlp -o '~/%(channel)s_%(title)s_%(height)s.%(ext)s' -f 18 "
alias yh="yt-dlp -o '~/%(channel)s_%(title)s_%(height)s.%(ext)s' -f 22 "
alias yf="yt-dlp -o '~/%(channel)s_%(title)s_%(height)s.%(ext)s' -f 'bestvideo[height<=1080][ext=mp4]+ba[ext=m4a]' "
alias yf="yt-dlp -o '~/%(channel)s-%(title)s.%(ext)s' -f 'bestvideo[height<=1080][ext=mp4]+ba[ext=m4a]' "
