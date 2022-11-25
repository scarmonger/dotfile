# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode copybuffer copypath zsh-autosuggestions zsh-syntax-highlighting autojump)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# suffix
alias -s {txt}='nvim'
alias -s {pdf,PDF}='zathura'
alias -s {jpg,JPG,png,PNG}='feh'
alias -s {ods,ODS,odt,ODT,odp,ODP,doc,DOC,docx,DOCX}='wps'
alias -s {xls,XLS,xlsx,XLSX,xlsm,XLSM,csv,CSV}='et'
alias -s {ppt,PPT,pptx,PPTX}='wpp'
alias -s {html,HTML}='chromium'
alias -s {mp4,MP4,mov,MOV,mkv,MKV}='vlc'
alias -s {zip,ZIP,war,WAR}="unzip -l"
alias -s {jar,JAR}="java -jar"
alias -s gz="tar -tf"
alias -s {tgz,TGZ}="tar -tf"
alias -s {tar.gz}="tar -xvf"

# git
gmm(){
	git add .
	git commit -m "$1"
}

gpush(){
	git add .
	git commit -m "$1"
	git push
}

alias gs="git status"
alias ga="git add ."
alias gb="git branch"
alias gbd="git branch -d" # delete branch
alias gc="git clone"
alias gcl="git clean -fdx"
alias gl="git log --oneoline"
alias gcom="git checkout master"
alias gr="git reset"
alias gco="git checkout"

alias ghd="cd ~/github/dotfile"
alias ghw="cd ~/github/suckless/dwm"
alias ghm="cd ~/github/suckless/dmenu"
alias ghs="cd ~/github/suckless/st"

# mouse
alias rtl='xmodmap -e "pointer = 1 2 3"'
alias ltr='xmodmap -e "pointer = 3 2 1"'

# change mouse click left to right
# xmodmap -e "pointer = 1 2 3" &
xmodmap -e "pointer = 3 2 1" 

xset r rate 300 50
# Change Capslock to ESC
setxkbmap -option caps:escape

# init window name for project libre
alias wm="wmname LG3D"

alias hist='history | dmenu -i -l 20 -p "history" | xclip -sel c'
alias df="df -h -x squashfs -x tmpfs -x devtmpfs"
alias lsmount="mount | column -t"
alias extip="curl icanhazip.com"

alias jabra='bluetoothctl power on; bluetoothctl connect 50:C9:71:5A:23:90'
alias jbl='bluetoothctl power on; bluetoothctl connect F4:BC:DA:A4:37:A5'
# alias bi="sudo apt --fix-broken install"
# alias di="sudo dpkg -i"
# alias i="sudo apt install"
alias up="sudo pacman -Syu --noconfirm"
alias qs="sudo pacman -Qs | grep"
alias ui="sudo pacman -Rs"
alias i="sudo pacman --noconfirm -S"
alias mk="makepkg -si"
alias mks="rm config.h && sudo make clean install"

# top 5 processes that using most memory
alias mem5="ps auxf | sort -nr -k 4 | head -5"
alias cpu10="ps auxf | sort -nr -k 3 | head -10"
alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -"

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias so="source ~/.zshrc"
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
export PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH=/usr/local/lib/nodejs/node-v18.12.1-linux-x64/bin:$PATH
export PATH=$PATH:$HOME/.local/bin:$HOME/.local/bin/custom:$HOME/.local/bin/statusbar
export PATH=$PATH:$HOME/.local/bin/image
export PATH=$PATH$( find $HOME/.script/ -type d -printf ":%p" )
export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="chromium"
export terminal="st"

#if [[ "$(tty)" = "/dev/tty1" ]]; then
#	pgrep dwm || startx
#fi

#PS1='[\u@\h \W]\$ '

#sample alias yt-dlp buat :
#1. file name {nama channel}-{title video}
#2. download video full hd lalu di merge (perlu install ffmpeg)

# Jump to folder
alias p="cd ~/Dropbox/Dataon/Project/"
alias d="cd ~/Dropbox"
alias o="cd ~/Downloads"
alias a="cd ~/Dropbox/Dataon/"
alias s="cd ~/Downloads/suckless/st"
alias w="cd ~/Downloads/suckless/dwm"
alias b="cd ~/.local/bin"
alias c="cd ~/.local/config"
alias m="cd ~/marc"
alias cdf="cd ~/files"
alias n="cd ~/Dropbox/notes"
alias myp="cd ~/Dropbox/My\ Project"
alias dc="/home/mc/Dropbox/linux/dotfiles/.local/bin/custom"



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

# Chris titus
# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.tar.xz)    tar xJf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
# ls, the common ones I use a lot shortened for rapid fire usage
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

alias zshrc='${=EDITOR} ~/.zshrc' # Quick access to the ~/.zshrc file

alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '

alias t='tail -f'

# Command line head / tail shortcuts
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g P="2>&1| pygmentize -l pytb"

alias dud='du -d 1 -h'
alias duf='du -sh *'
# alias fd='find . -type d -name'
alias ff='find . -type f -name'

alias h='history'
alias hgrep="fc -El 0 | grep"
alias help='man'
alias p='ps -f'
alias sortnr='sort -n -r'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# Battery
alias bat='sudo tlp-stat -b'
alias bat100='sudo tlp fullcharge'
alias bat30='sudo tlp setcharge 25 30 BAT0'

alias blkid="sudo blkid"
alias dd='sudo dd if=~/Downloads/file.iso of=/dev/sdc bs=1M status=progress'
alias umt='sudo umount /dev/sdc1'
alias scan='clamscan --recursive --infected  --max-filesize=4000M -l ~/scanlog.txt --move=/home/mc/clamav/ /'
alias rnet='sudo systemctl restart NetworkManager'
alias syn='rsync -urvP '

# Operating system specific aliases
if [[ $OSTYPE == darwin* ]]; then
alias flush='dscacheutil -flushcache'
# Apps
alias browse="open -a /Applications/Google\ Chrome.app"
# * Browse Azure Portal
alias azure="browse https://preview.portal.azure.com"
fi

aliasname() {
	command $firstParam $secondParam
}

alias own="sudo -R chown mc:mc *"
alias p1="ping www.gmail.com -s 1000"
alias p2="ping 192.168.0.1 -s 1000"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
