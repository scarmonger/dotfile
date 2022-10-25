# Project
dbmultirasa	    mycli -h portal.multirasa.co.id -u sst_user -p P@ssw0rdsst -D dbsf_nbc_multirasa -P 5050
mantap-loc		sudo sshfs -o allow_other,default_permissions,nonempty -p 22 imp-dev@192.168.100.221:/media/sf6/ /mnt/mantap-app/

# utils
f   	fish_config
scan    clamscan --recursive --infected --max-filesize=4000M -l ~/scanlog.txt --move=/home/mc/clamav/ /
bat30	sudo tlp setcharge 25 30 BAT0
dbx		python ~/.local/bin/dropbox.py status
tar		tar -xvf file.tar.gz
umt		sudo umount /dev/sdc1
chown	sudo chown -R mc:mc *
dd		sudo dd if=/home/xyz/Documents/artix-base-runit-20220123-x86_64.iso of=/dev/sdc bs=1M status=progress

abbr --add df 'df -h -x squashfs -x tmpfs -x devtmpfs'
abbr --add lsmount 'mount | column -t'
abbr --add extip 'curl icanhazip.com'

abbr --add pow 'sudo poweroff'
abbr --add reb 'sudo reboot'
abbr --add sus 'sudo systemctl suspend;slock;'
abbr --add bat100 'sudo tlp fullcharge'
abbr --add cal 'cal 2022'
abbr --add cam 'ffplay /dev/video0'

abbr --add so 'source ~/.bashrc'
abbr --add sox 'source ~/.xinitrc'

abbr --add tr 'tmux attach -t ranger || tmux new -s ranger'
abbr --add tv 'tmux attach -t nvim || tmux new -s nvim'
abbr --add td 'tmux attach -t download || tmux new -s download'

## top 5 processes that using most memory
abbr --add mem5 'ps auxf | sort -nr -k 4 | head -5'
abbr --add cpu10 'ps auxf | sort -nr -k 3 | head -10'
abbr --add speedtest 'curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'

abbr --add ls 'ls --color=auto'
abbr --add ll 'ls -alF'
abbr --add la 'ls -A'
abbr --add l 'ls -CF'

# pacman
abbr --add up 'sudo pacman -Syu --noconfirm'
abbr --add qs 'sudo pacman -Qs | grep'
abbr --add ui 'sudo pacman -Rs'
abbr --add i 'sudo pacman --noconfirm -S'

# packages
abbr --add mk 'makepkg -si'

# alias bi="sudo apt --fix-broken install"
# alias di="sudo dpkg -i"
# alias i="sudo apt install"

# dwm
abbr --add mks 'rm config.h && sudo make clean install'

# git
abbr --add gc 'git clone'
abbr --add gs 'git status'

# single char
abbr --add v 'nvim'
abbr --add f 'fish_config'
abbr --add r 'ranger'

## folder path
abbr --add p 'cd ~/Dropbox/Dataon/Project/'
abbr --add d 'cd ~/Dropbox'
abbr --add o 'cd ~/Downloads'
abbr --add a 'cd ~/Dropbox/Dataon/'
abbr --add s 'cd ~/Downloads/suckless/st'
abbr --add w 'cd ~/Downloads/suckless/dwm'
abbr --add b 'cd ~/.local/bin'
abbr --add c 'cd ~/.local/config'
abbr --add m 'cd ~/marc'
abbr --add n 'cd ~/Dropbox/notes'
abbr --add cdf 'cd ~/files'
abbr --add P 'cd ~/Dropbox/My\ Project'

# mycli
abbr --add dbmultirasa 'mycli -h portal.multirasa.co.id -u sst_user -p P@ssw0rdsst -D dbsf_nbc_multirasa -P 5050'

#sample alias yt-dlp buat :
#1. file name {nama channel}-{title video}
#2. download video full hd lalu di merge (perlu install ffmpeg)

abbr --add ya "yt-dlp -o '~/marc/youtube/audio/%(channel)s_%(title)s.%(ext)s' -f 'bestaudio' "
abbr --add ys "yt-dlp -o '~/marc/youtube/video/%(channel)s_%(title)s_%(height)s.%(ext)s' -f 18 "
abbr --add yh "yt-dlp -o '~/marc/youtube/video/%(channel)s_%(title)s_%(height)s.%(ext)s' -f 22 "
abbr --add yf "yt-dlp -o '~/marc/youtube/video/%(channel)s_%(title)s_%(height)s.%(ext)s' -f 'bestvideo[height<=1080][ext=mp4]+ba[ext=m4a]' "
