#/home/mc/github/dotfile/.config/bin/bash
# create symlink
# example : ln -ivs source_file/folder target_folder
mkdir -p ~/.script
mkdir -p ~/.local/bin
mkdir -p ~/github

cd github
git clone https://github.com/scarmonger/suckless.git
git clone https://github.com/scarmonger/dotfile.git

ln -ivs ~/github/dotfile/.xinitrc ~/.xinitrc
# ln -ivs ~/github/dotfile/.bash_profile ~/.bash_profile
# ln -ivs ~/github/dotfile/.bashrc ~/.bashrc
# ln -ivs ~/github/dotfile/.bash_aliases ~/.bash_aliases

ln -ivs ~/github/dotfile/etc/smb.conf /etc/samba


# Download file .AppImage for ksnip and obsidian
https://github.com/ksnip/ksnip/releases
https://obsidian.md/

## rename ksnip and obsidian first
chmod +x ksnip
chmod +x obsidian
mv ksnip obsidian ~/.local/bin/image
> sudo pacman -S fuse # harus install fuse untuk menjalankan AppImage

#git clone
cd downloads
cd yay
https://aur.archlinux.org/yay.git
makepkg -si

# install via yay
yay wps-office
#yay xournal
yay castero
yay photocollage
yay libreoffice-still

# Setup Qutebrowser
set url.searchengines '{"DEFAULT": "https://duckduckgo.com/?q={}", "aw": "https://wiki.archlinux.org/?search={}", "cf": "https://cfdocs.org/{}", "mdb": "https://mariadb.com/kb/en/+search/?q={}", "sf": "https://sfsupport.dataon.com/app/ticket/forms/{}", "yts": "https://www.youtube.com/results?search_query={}", "yu": "https://yufid.com/result_yufid.html?search={}"}'
set auto_save.session true

# Setup dmenu_run_history
sudo ln -ivs ~/github/suckless/dmenu_run_history /usr/local/bin/dmenu_run_history

# Config file
rm -Rf ~/.config/nvim
ln -ivs ~/github/dotfile/.config/nvim ~/.config/

rm -Rf ~/.config/ranger
ln -ivs ~/github/dotfile/.config/ranger ~/.config/

ln -ivs ~/github/dotfile/abook ~/.abook/
ln -ivs ~/github/dotfile/.config/msmtp/config ~/.config/msmtp/
ln -ivs ~/github/dotfile/.config/mutt/muttrc ~/.config/mutt/
ln -ivs ~/github/dotfile/.config/zathura ~/.config/

ln -ivs ~/github/dotfile/.config/picom.conf ~/.config/
cp -iv ~/github/dotfile/.config/ksnip/ksnip.conf ~/.config/ksnip/ksnip.conf
ln -ivs ~/github/dotfile/.config/castero ~/.config/
ln -ivs ~/github/dotfile/.config/dunst ~/.config/
ln -ivs ~/github/dotfile/.config/shell ~/.config/

# local bin file
ln -ivs ~/github/dotfile/.local/bin/statusbar ~/.local/bin
ln -ivs ~/github/dotfile/.local/bin/custom ~/.local/bin
ln -ivs ~/github/dotfile/.config/moc/config ~/.moc/
# home folder
# ln -s ~/github/dotfile/.gnupg/ ~/.gnupg
ln -s ~/github/dotfile/.password-store/ ~/.password-store

su
cat /home/mc/github/dotfile/etc_hosts >> /etc/hosts

ln -s ~/github/dotfile/.zshrc ~/.zshrc
ln -s ~/github/dotfile/.zprofile ~/.zprofile
ln -s ~/github/dotfile/.oh-my-zsh/custom/autocomplete.zsh ~/.oh-my-zsh/custom/autocomplete.zsh
ln -s ~/github/dotfile/.oh-my-zsh/custom/shortcuts.zsh ~/.oh-my-zsh/custom/shortcuts.zsh
ln -s ~/github/dotfile/.config/mimeapps.list ~/.config/mimeapps.list

## Project Libre in dwm
https://bbs.archlinux.org/viewtopic.php?id=251721
https://wiki.archlinux.org/title/Java#Gray_window,_applications_not_resizing_with_WM,_menus_immediately_closing
Solution: execute in command line
`wmname LG3D`

# Android file transfer
sudo pacman -S android-file-transfer
aft-mtp-mount ~/mnt

# Aur
realvnc-vnc-viewer
libxft-bgra
zoom
anydesk-bin
mycli
wps-office
ttf-wps-fonts
projectlibre
visual-studio-code-bin
arch-diff
photocollage

# photo manager
https://github.com/nsxiv/nsxiv
https://github.com/sarfraznawaz2005/quran-cli

# Applications
sudo pacman -S firefox chromium qutebrowser xclip clipmenu rsync man
sudo pacman -S ranger trash-cli ncdu pcmanfm thunar xdotool vlc mpv file-roller
sudo pacman -S fuse feh w3m htop gvfs tmux ripgrep sshfs dunst
> fuse untuk menjalankan file AppImage
> gvfs untuk menampilkan recycle bin di thunar / pcmanfm
sudo pacman -S okular bpytop xorg-xev dbeaver wmname veracrypt traceroute
sudo pacman -S xautolock zip unzip file-roller pass pass-otp arandr autorandr
sudo pacman -S numlockx gimp galculator moc universal-ctags thunderbird playerctl
sudo pacman -S screenkey obs-studio filezilla conky yt-dlp tlp keepass neofetch lxappearance
sudo pacman -S pdftk arc-icon-theme fzf findutils mlocate xorg-xinput
sudo pacman -S virtualbox 
sudo pacman -S ntfs-3g prettier
sudo pacman -S zathura zathura-cb zathura-djvu android-file-transfer ttf-font-awesome
>zathura-cb — Comic book support
>zathura-djvu — DjVu support
>zathura-pdf-mupdf — EPUB, PDF and XPS support based on MuPDF
>zathura-pdf-poppler — PDF support based on Poppler
>zathura-ps — PostScript support

sudo pacman -S imagemagick 
> convert pic1.png pic_fixed.png

# Install python,pip & selenium
sudo pacman -S python python-pip
pip install selenium
pip install pyperclip

## requirement for ultisnips
python -m pip install --user --upgrade pynvim

# GitHub authentication
https://cli.github.com/manual/
sudo pacman -S github-cli

# Qemu, virt-manager, libvirt
https://wiki.archlinux.org/title/libvirt
https://wiki.archlinux.org/title/Virt-Manager
https://jamielinux.com/docs/libvirt-networking-handbook/nat-based-network.html

## Main package to be installed
sudo pacman -S virt-manager qemu-desktop libvirt edk2-ovmf dnsmasq iptables-nft dmidecode 

## start & enable service
systemctl start libvirtd.service
systemctl enable libvirtd.service

## optional packages to be installed 
sudo pacman -S bridge-utils openbsd-netcat

## edit these file, and uncomment
sudo nvim /etc/libvirt/libvirtd.conf
...
unix_sock_group = 'libvirt'
...
unix_sock_rw_perms = '0770'
unix_sock_ro_perms = '0770'
...

## add user mc to libvirt group
sudo usermod -aG libvirt mc

## after editing restart service
systemctl restart libvirtd.service

start qemu with: virt-manager

# Sound
sudo pacman -S alsa-utils
sudo pacman -S pulseaudio-zeroconf pulseaudio-equalizer pulseaudio pulseaudio-alsa pulseaudio-jack pulseaudio-bluetooth 

Run:
alsamixer

Unmute Microphone and Speaker using space. (To go to microphone setting use F4)

# Screen brightness (brightness control - archwiki)
sudo pacman -S brightnessctl

brightnessctl set 500
	Sets brightness to 500.

brightnessctl set 50%
	Sets brightness to 50% of the maximum.

brightnessctl set 50-
	Subtracts 50 from the current brightness.

brightnessctl set +10
	Adds 10 to the current brightness.

brightnessctl set 50%-
	Subtracts 50% of the maximum from the current brightness.

brightnessctl set +10%
	Adds 10% of the maximum to the current brightness.


# Enable tap on touchpad permanently
Reference : https://wiki.archlinux.org/index.php/Libinput
create new file named : 30-touchpad.conf on this folder 
/etc/X11/xorg.conf.d/

Add these lines of code into the file:
Section "InputClass"
    Identifier "touchpad"
    Driver "libinput"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    Option "TappingButtonMap" "lmr"
EndSection


# install dmenu_run_history
Download the bin file from 
https://tools.suckless.org/dmenu/scripts/dmenu_run_with_command_history/dmenu_run_history

Copy file to bin directory
sudo cp ~/marc/master/dmenu_run_history /usr/local/bin/

Rename dmenu_run and dmenu_run_history to replace one and another
sudo mv dmenu_run dmenu_run_bak
sudo mv dmenu_run_history dmenu_run


## display link
git clone evdi-git
git clone displaylink
systemctl enable displaylink.service
sudo mousepad /usr/share/X11/xorg.conf.d/20-evdidevice.conf

w3m - ranger image display
sshfs - filezilla replacement
ncdu - treesize
alsa-utils - sound
> execute : alsamixer

xorg-xinput
> to configure input on runtime
> xinput list 
>> check device lists
> xinput list-props device(id=16 <touchpad id>)
>> check lists of properties on a device 
> xinput set-prop [deviceid] [propid] 1
>> xinput set-prop 16 331 1


## change /etc/sudoers 
in order to not always prompted for password. Setting is for input password only once on the same terminal session

`EDITOR=vim visudo` / `sudo vim /etc/sudoers`
uncomment :
`%wheel ALL=(ALL) NOPASSWD: ALL`

add (from luke):
#This keeps you from needing to reinsert your password in each different terminal a wheel user uses sudo in
`Defaults !tty_tickets`

## change default application in ~/.profile or ~/.bash_profile and Customizing user startup and settings. Check out files like ~/.profile or ~/.bash_profile, which will run on login, etc (Luke)

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.script
export EDITOR="vim"
export BROWSER="qutebrowser"
export terminal="st"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep dwm || startx
fi

## Change Battery Threshold 
https://linrunner.de/tlp/settings/battery.html

Battery Management 
https://wiki.archlinux.org/index.php/TLP
Syntax:
$ sudo tlp bat

## Install TLP battery management - archwiki
systemctl enable tlp
systemctl start tlp
tlp-stat


## Setting DNS
+ /etc/NetworkManager/conf.d/dns-servers.conf
> buat file sendiri dgn nama dns-servers.conf
> lalu di isi dengan :
>
> [global-dns-domain-*]
> servers=::1,127.0.0.1,94.140.14.14,1.1.1.1



## Restart Network
sudo systemctl restart NetworkManager
sudo systemctl status NetworkManager

# Installing HP Printer
Install cups, make sure the service is running
sudo pacman -S hplip
run command : hp-setup ,for auto detect device

# Password manager
Install : sudo pacman -S pass pass-otp passmenu


