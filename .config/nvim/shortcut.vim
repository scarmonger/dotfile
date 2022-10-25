" folder path
cmap ;cdp cd ~/Dropbox/My\ Project
cmap ;cdo cd ~/Downloads
cmap ;cdn cd ~/Dropbox/notes
cmap ;cdb cd ~/.local/bin<cr>pwd
cmap ;cdc cd ~/.config/bin<cr>pwd
cmap ;cdC cd ~/Dropbox/Coding

" edit file
cmap ;edb e ~/Downloads/suckless/blocks/config.h<cr>
cmap ;edw e ~/Downloads/suckless/dwm/config.def.h<cr>
cmap ;eds e ~/Downloads/suckless/st/config.def.h<cr>
cmap ;edm e ~/Downloads/suckless/dmenu/config.def.h<cr>

" build shortcut
cmap ;mks cd %:h<cr>;!rm config.h && sudo make clean install<cr>
cmap ;mk  cd %:h<cr>;!sudo make clean install<cr>

" other utils
cmap ;cur cd %:h<cr>;pwd<cr>

