alias ya="yt-dlp -o '~/secondary/youtube/audio/%(channel)s_%(title)s.%(ext)s' -f 'bestaudio' "
alias ys="yt-dlp -o '~/secondary/youtube/video/%(channel)s_%(title)s_%(height)s.%(ext)s' -f 18 "
alias yh="yt-dlp -o '~/secondary/youtube/video/%(channel)s_%(title)s_%(height)s.%(ext)s' -f 22 "
alias yf="yt-dlp -o '~/secondary/youtube/video/%(channel)s_%(title)s_%(height)s.%(ext)s' -f 'bestvideo[height<=1080][ext=mp4]+ba[ext=m4a]' "
alias yf="yt-dlp -o '%(channel)s-%(title)s.%(ext)s' -f 'bestvideo[height<=1080][ext=mp4]+ba[ext=m4a]' "

#sample alias yt-dlp buat :
#1. file name {nama channel}-{title video}
#2. download video full hd lalu di merge (perlu install ffmpeg)

alias cdp="cd ~/Dropbox/Dataon/Project/"

# xdotool set_window --name "wew" 23068687
alias df="df -h -x squashfs -x tmpfs -x devtmpfs"
alias lsmount="mount | column -t"
alias extip="curl icanhazip.com"

alias bi="sudo apt --fix-broken install"
alias di="sudo dpkg -i"
alias i="sudo apt install"

alias so="source ~/.bashrc"
alias upgrade="sudo apt update && sudo apt dist-upgrade"
alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -"

# top 5 processes that using most memory
alias mem5="ps auxf | sort -nr -k 4 | head -5"
alias cpu10="ps auxf | sort -nr -k 3 | head -10"
# wmctrl -lG // to check all windows opened
alias fa="wmctrl -r firefox -e 0,20,50,1224,800"
alias r="ranger"
alias rs="sudo ranger"
alias sus="i3lock -etfi ~/Documents/wp.png; systemctl suspend"
alias cala="cal 2022"
alias cam="ffplay /dev/video0"

# git
alias gs="git status"
alias gasa="cd ~/Documents/github/dotfiles/ && git add . && git commit -m 'add' && git push"
alias gass="cd ~/Documents/github/dataon/ && git add . && git commit -m 'add' && git push"
alias gasd="cd ~/Documents/github/tech/ && git add . && git commit -m 'add' && git push"
alias gasf="cd ~/Documents/github/personal/ && git add . && git commit -m 'add' && git push"
alias pushall="cd ~/Documents/github/dotfiles/ && git add . && git commit -m 'add' && git push cd ~/Documents/github/dataon/ && git add . && git commit -m 'add' && git push && cd ~/Documents/github/tech/ && git add . && git commit -m 'add' && git push && cd ~/Documents/github/personal/ && git add . && git commit -m 'add' && git push"
alias pullall="cd ~/Documents/github/dotfiles/ && git pull && cd ~/Documents/github/dataon/ && git pull && cd ~/Documents/github/tech/ && git pull && cd ~/Documents/github/personal/ && git pull"

alias gd="cd ~/Documents/github/dataon/ && nvim"
alias gt="cd ~/Documents/github/tech/ && nvim"
alias gp="cd ~/Documents/github/personal/ && nvim"

alias gp="cd ~/Documents/ && yt-dlp -f '\''bestaudio'\'' "

# alias extres="xrandr --output LVDS-1 --auto --output VGA-1 --primary --mode 1600x900 --left-of LVDS-1"

alias e230="xrandr --output LVDS-1 --auto --output VGA-1 --primary --auto --left-of LVDS-1"
alias setmon="xrandr --output eDP-1 --mode 1600x900 --output DVI-I-1-1 --mode 1440x900 --left-of eDP-1"

alias mirror="echo xrandr --output VGA-1 --auto --scale-from 1366x768 --output LVDS-1"

alias tr="tmux attach -t ranger || tmux new -s ranger"
alias tv="tmux attach -t nvim || tmux new -s nvim"
alias td="tmux attach -t download || tmux new -s download"

alias v="nvim"
alias f="fish"
#export EDITOR='nvim'
#export VISUAL='nvim'
#export RANGER_LOAD_DEFAULT_RC='FALSE'
#export CUSTOM_NVIM_PATH='/usr/local/bin/nvim.appimage'
. ~/Documents/github/dotfiles/.fancy-bash-promt.sh
