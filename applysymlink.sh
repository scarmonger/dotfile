#/bin/bash
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

rm -Rf ~/.config/fish
ln -ivs ~/github/dotfile/.config/fish ~/.config/

ln -ivs ~/github/dotfile/.config/picom.conf ~/.config/
cp -iv ~/github/dotfile/.config/ksnip/ksnip.conf ~/.config/ksnip/ksnip.conf
ln -ivs ~/github/dotfile/.config/castero ~/.config/
ln -ivs ~/github/dotfile/.config/dunst ~/.config/
ln -ivs ~/github/dotfile/.config/shell ~/.config/

# local bin file
ln -ivs ~/github/dotfile/.local/bin/statusbar ~/.local/bin
ln -ivs ~/github/dotfile/.local/bin/custom ~/.local/bin

# home folder
# ln -s ~/github/dotfile/.gnupg/ ~/.gnupg
# ln -s ~/github/dotfile/.password-store/ ~/.password-store

su
cat /home/mc/github/dotfile/etc_hosts >> /etc/hosts

ln -s ~/github/dotfile/.zshrc ~/.zshrc
ln -s ~/github/dotfile/.zprofile ~/.zprofile
mv ~/.oh-my-zsh/custom ~/.oh-my-zsh/custom_archived
ln -s ~/github/dotfile/.oh-my-zsh/custom ~/.oh-my-zsh/custom
ln -s ~/github/dotfile/.config/mimeapps.list ~/.config/mimeapps.list


# Usefull Command:
xprop, xev, neofetch, printenv, xdotool, wmctrl

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

## To turn off screen 
xset dpms force off

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

# Network Setting
nm-connection-editor 

w3m - ranger image display
sshfs - filezilla replacement
ncdu - treesize
alsa-utils - sound
> execute : alsamixer
flameshot - screenshot
kitty - terminal
feh - image viewer
ranger - file explorer
mpv - video player
xorg-xinput
> to configure input on runtime
> xinput list 
>> check device lists
> xinput list-props device(id=16 <touchpad id>)
>> check lists of properties on a device 
> xinput set-prop [deviceid] [propid] 1
>> xinput set-prop 16 331 1
gvim
> to enable clipboard Ctrl + c or Ctrl + v
> create file ~/.vimrc
> input these line of code:
> vnoremap <C-c> "+y
> map <C-v> "+P

> vnoremap <C-c> "*y : let @+=@*<CR>

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

## How to know WM_Class of a Window:
Open any application you desired, and then open a terminal side by side and type **xprop** and hit enter
```
xprop
```
the mouse cursor is now changed to a pointer. Point that cursor on the application that you want to target.
The terminal now show you the window properties
```
_NET_WM_BYPASS_COMPOSITOR(CARDINAL) = 2
_NET_WM_SYNC_REQUEST_COUNTER(CARDINAL) = 33554434, 33554435
_GTK_THEME_VARIANT(UTF8_STRING) = "dark"
WM_WINDOW_ROLE(STRING) = "browser"
WM_CLASS(STRING) = "google-chrome", "Google-chrome"
_NET_WM_WINDOW_TYPE(ATOM) = _NET_WM_WINDOW_TYPE_NORMAL
_NET_WM_PID(CARDINAL) = 1704
WM_LOCALE_NAME(STRING) = "en_US.UTF-8"
WM_CLIENT_MACHINE(STRING) = "asus-i3"
WM_PROTOCOLS(ATOM): protocols  WM_DELETE_WINDOW, _NET_WM_PING, _NET_WM_SYNC_REQUEST
```
Check for the second parameter of this line which is **Google-chrome**
WM_CLASS(STRING) = "google-chrome", "Google-chrome"


# Check packages installed on arch linux

Check all packages installed on arch linux
`pacman -Qe`

Check a package version installed on arch linux
`pacman -Q packagename` 
example: `pacman -Q ranger`

# Connect to WiFi
`nmtui`

# Scan for viruses
clamscan --recursive --infected --exclude-dir='^/sys|^/dev' / --move=/home/marc/Infectedfile/ --max-filesize=4000M --max-scansize=4000M -l /home/marc/ClamAV_scan_result.txt

clamscan --recursive --infected /home --move=/home/marc/Infectedfile/ -l /home/marc/ClamAV_scan_result_home.txt

clamscan --recursive /home --move=/home/marc/Infectedfile/ -l /home/marc/ClamAV_scan_result_home.txt

clamscan --recursive /home/marc/Documents/ --exclude-dir='^/home/marc/Documents/mail.dataon.com|^/home/marc/Documents/VirtualBox' --move=/home/marc/Infectedfile/ > /home/marc/scan_result.txt

# Update AV Database
sudo freshclam

# Mount NTFS file system
mount -t ntfs3 /dev/sdxY /mnt

You can enable some mount(8) options to improve the performance:

noatime – can speed up the file system operations.
prealloc – decreases fragmentation in case of parallel write operations (most useful for HDD).

# Set volume with amixer
amixer set Master toggle
amixer set Master 5%-
amixer set Master 5%+

trash-list (show trashed item)
trash-restore (from within the folder deleted)

# Set up default browser and editor
try edit the browser entry in
/home/$USER/.profile

then find and replace all Pale Moon entries in
/home/$USER/.config/mimeapps.list

####################################
### /home/$USER/.profile ###
export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/code
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/google-chrome-stable
####################################


### /home/$USER/.config/mimeapps.list ###
#########################################

[Default Applications]
x-scheme-handler/http=userapp-google-chrome-stable.desktop
x-scheme-handler/https=userapp-google-chrome-stable.desktop
x-scheme-handler/ftp=userapp-google-chrome-stable.desktop
x-scheme-handler/chrome=userapp-google-chrome-stable.desktop
text/html=userapp-google-chrome-stable.desktop
application/x-extension-htm=userapp-google-chrome-stable.desktop
application/x-extension-html=userapp-google-chrome-stable.desktop
application/x-extension-shtml=userapp-google-chrome-stable.desktop
application/xhtml+xml=userapp-google-chrome-stable.desktop
application/x-extension-xhtml=userapp-google-chrome-stable.desktop
application/x-extension-xht=userapp-google-chrome-stable.desktop
image/jpeg=viewnior.desktop;gpicview.desktop;
image/png=viewnior.desktop;gpicview.desktop;
text/plain=mousepad.desktop
x-scheme-handler/mailto=userapp-Thunderbird.desktop
message/rfc822=userapp-Thunderbird.desktop
application/pdf=epdfview.desktop
application/x-bittorrent=deluge.desktop
x-scheme-handler/postman=Postman.desktop

[Added Associations]
x-scheme-handler/http=exo-web-browser.desktop;
x-scheme-handler/https=exo-web-browser.desktop;
image/jpeg=viewnior.desktop;gpicview.desktop;
image/png=viewnior.desktop;gpicview.desktop;
text/plain=mousepad.desktop;
x-scheme-handler/mailto=userapp-Thunderbird.desktop;
message/rfc822=userapp-Thunderbird.desktop;
application/pdf=epdfview.desktop;
application/x-bittorrent=deluge.desktop;
#########################################

# VPN-PPTP
sudo pacman -S networkmanager-pptp

Syntax for create VPN DataOn see keepass
sudo pon <TUNNEL> debug dump logfd 2 nodetach
sudo pon dataon debug dump logfd 2 nodetach
sudo pon dataon

https://wiki.archlinux.org/title/PPTP_server
http://pptpclient.sourceforge.net/routing.phtml#client-to-server

# Installing HP Printer
Install cups, make sure the service is running
sudo pacman -S hplip
run command : hp-setup ,for auto detect device

# Password manager
Install : sudo pacman -S pass pass-otp
## Create gpg first
gpg --full-gen-key
gpg -k : cek public key etc

Pass init a@b.c
Passmenu - run through dmenu
Pass add email - add new password
Pass email - open saved password
Pam gnu pg - to automatic login to gpg password
zbarimg -q file.img - prog to know content of qr code

# network applet
nm-connection-editor 

# Setting default apps
$ xdg-mime query filetype photo.jpeg
image/jpeg
Determine the default application for a MIME type:

$ xdg-mime query default image/jpeg
gimp.desktop
Change the default application for a MIME type:

$ xdg-mime default feh.desktop image/jpeg

Example:
xdg-mime default wps-office-et.desktop text/html

# Check keyboard or mouse wireless
upower --dump


# zsh
https://github.com/wting/autojump/blob/master/docs/install.md
git clone https://github.com/wting/autojump.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

https://christitus.com/zsh/
https://zsh.sourceforge.io/Guide/zshguide.html
https://wiki.archlinux.org/title/zsh
https://github.com/ChrisTitusTech/zsh/blob/master/aliasrc
https://github.com/sdaschner/dotfiles/blob/master/.aliases
https://github.com/ohmyzsh/ohmyzsh
https://www.thorsten-hans.com/5-types-of-zsh-aliases
https://gist.github.com/dogrocker/1efb8fd9427779c827058f873b94df95
