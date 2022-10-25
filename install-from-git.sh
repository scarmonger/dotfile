cd ~/Downloads

apps=("realvnc-vnc-viewer" "libxft-bgra" "zoom")

for i in "${apps[@]}"
do 
  if [ -d "$i" ]; then
	  echo "$i already installed"
	else
	  git clone https://aur.archlinux.org/$i.git
	  cd $i
	  makepkg -si --needed --noconfirm
	  cd ..
  fi
done



# git clone https://aur.archlinux.org/libxft-bgra.git
# git clone https://aur.archlinux.org/zoom.git

