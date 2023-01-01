
" source from vim
" :so %
" :option - to check option the primeagen
" :bd / bw to delete buffer
" :.!pwd - to get current folder path and paste in editor
" ctrl+r+0 paste from clipboard to command
" help key-notation

" Installing vim on windows
" :version
" 1. check vimrc path, 32/64 bit gvim version
" 2. check python2 and python 3 version: current 2.7dll and 3.9

" :echo has("python") check for python2 // return 0 or 1
" :echo has("python3_dynamic")  check for python3 is installed

" 1.key remap

let mapleader = " "
let maplocalleader = "\\"

" Change semicolon to colon and viceversa
nnoremap ; :
nnoremap : ;

" Add enter functionality to add new row
nnoremap <CR> m`o<Esc>``


if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Handling registers 
:nnoremap <Leader>s :let @x=@" \| let @"=@a \| let @a=@b \| let @b=@x \| reg "ab<CR>

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
	elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
		nnoremap <leader>so :source $HOME\_vimrc<CR>
		nnoremap <leader>ev :e $HOME\_vimrc<cr>
    set guifont=Consolas:h11:cANSI
    set linespace=1
    set guioptions-=m  "menu bar
    set guioptions-=T  "toolbar
    set guioptions-=r  "scrollbar
    set backspace=indent,eol,start
		set encoding=utf-8
		echom "asik"
  endif
else
	nnoremap <leader>ev :e $MYVIMRC<cr>
	nnoremap <leader>es :e ~/Dropbox/linux/dotfiles/.config/nvim/shortcut.vim<cr>
	nnoremap <leader>ed :e ~/github/suckless/dwm/config.def.h<cr>
	nnoremap <leader>ec :e ~/github/suckless/dwmblocks/config.h<cr>
	nnoremap <leader>ex :e ~/.xinitrc<cr>
	nnoremap <leader>ez :e ~/.zshrc<cr>
	nnoremap <leader>er :e ~/.config/ranger/rc.conf<cr>
	nnoremap <leader>ea :e ~/github/dotfile/.aliases<cr>
	nnoremap <leader>eb :e ~/.bashrc<cr>
	nnoremap <leader>ep :e ~/.config/picom/picom.conf<cr>
	nnoremap <leader>eq :e ~/.config/qutebrowser/config.py<cr>
	nnoremap <leader>so :source $MYVIMRC<CR>
endif
" Delete line when insert mode
inoremap <c-d> <esc>ddi

" Ctrl u for upper case a word
inoremap <c-u> <esc>bvegUea
nnoremap <c-u> bvegUe

" Surround word with double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>< viw<esc>a><esc>hbi<<esc>lel

vnoremap <leader>" <esc>a"<esc>`<i"<esc>`>2l
vnoremap <leader>' <esc>a'<esc>`<i'<esc>`>2l

xnoremap <Del> "_d
nnoremap <leader>d "_d
xnoremap <leader>d "_d


" calculate number
nnoremap <leader><Enter> :.! bc -l <CR>

"" vnoremap jk <esc>

" <nop> (no operation)
" inoremap <esc> <nop>

" Mapping to reload configuration
"nnoremap <leader>aa :source ~/.config/nvim/init.vim <CR>
"nnmap <leader>aa :source ~/.config/nvim/init.vim <CR>

" Shortcut for telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fh <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr><esc>
nnoremap <leader>fH <cmd>Telescope help_tags<cr>
nnoremap <leader>fc <cmd>Telescope command_history<cr><esc>
nnoremap <leader>fo <cmd>lua require('telescope.builtin').oldfiles()<cr>


"nnoremap <Leader>ff :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>

"Replace all is aliased to S
nnoremap S :%s//gc<left><left><left>
"vnoremap S :s//gc<left><left><left>
vnoremap S y:%s/<C-r>0//gc<left><left><left>

" F2 button to Copy to buffer q as backup
nnoremap <F2> "qyy
vnoremap <F2> "qy

" F3 to paste from q buffer
nnoremap <F3> "qP
inoremap <F3> <C-r>q 

" F4 to check registered buffer
nnoremap <F4> :reg<cr>

inoremap <F4> <ESC>:reg<CR>
nnoremap <F4> :reg<CR>

" Copy file name path to clipboard
nnoremap <F10> :let @+ = expand("%:p")<CR>

" This appends the current date and time after the cursor (in <> notation |<>|).
noremap <F11> a<C-R>=strftime("%c")<CR><Esc>

nnoremap <F5> :UndotreeToggle<CR>

" Other shortcut

" Change directory to current directory"
nnoremap <leader>df :cd %:h<cr>

" Change directory "
nnoremap <leader>wn :cd ~/Dropbox/notes<cr>:pwd<CR>
nnoremap <leader>wa :cd ~/Dropbox/notes/dataon<cr>:pwd<CR>
nnoremap <leader>wt :cd ~/Dropbox/notes/tech<cr>:pwd<CR>
nnoremap <leader>wp :cd ~/Dropbox/notes/personal<cr>:pwd<CR>

"nnoremap <leader>p :PlugInstall<cr>

" Remove Highlight"
nnoremap \ :noh<cr>

" Tab navigation
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt

nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Project Drawer
nnoremap <F9> :Lexplore<CR>
"nnoremap <S-F9> :cd %:h<cr> :Lexplore<CR>

" Window Navigation
" nnoremap <tab> :wincmd w<CR>
inoremap <leader><tab> <ESC> :wincmd w<CR>i
"nnoremap <C-S-tab> :wincmd p<CR>i
"nnoremap <C-tab> :wincmd w<CR>i

" Make ctrl-c in visual mode yank to x clipboard
"vnoremap <C-c> "+y
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

vnoremap <leader>\ "qy
nnoremap <leader>\ "qp

" KEY REMAP: ThePrimeagen
" Number 5: make big Y to copy from cursor to end of the line
nnoremap Y y$

" Number 4: Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
"nnoremap J mzJ'z
nnoremap <C-j> :cnext<CR>zzzv
nnoremap <C-k> :cprevious<CR>zzzv

"Paste from x clipboard"
inoremap <C-v> <C-r>+

nnoremap <C-a> gg0VGL
inoremap <C-a> gg0VGL
" nnoremap <C-s> gt
" inoremap <C-s> gt

" Number 3: Undo Break Points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
""inoremap <space> <space><c-g>u

" Number 2: Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" Number 1: Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==i
inoremap <C-k> <esc>:m .-2<CR>==i
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==


filetype plugin indent on
inoremap ' ''<ESC>ha
inoremap " ""<ESC>ha
inoremap ` ``<ESC>ha
inoremap ( ()<ESC>ha
inoremap [ []<ESC>ha
inoremap { {}<ESC>ha
inoremap /* /** */<ESC>2ha

"Mapping related to PHP
inoremap ;; <C-o>A;
inoremap ,, <C-o>A,

"inoremap =<space> <space>=<space>
inoremap =><space> <space>=><space>

" 2-abbreviation

iabbrev adn and
iabbrev waht what
iabbrev tehn then
iabbrev mabort Marc abort line @<cfabort><esc>F@a
iabbrev mdump <cfdump var='##' label='' expand='yes'><esc><space>C<esc>F#i

" 3.plugin
" Vundle
" Plugin 'tpope/vim-surround'
" Plugin 'tpope/vim-commentary'
" Plugin 'tpope/vim-repeat'
" Plugin 'tpope/vim-liquid'
" nerdtree

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

if has("gui_running")
	echo "nothing"
else
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'wellle/context.vim'
endif

" Colorscheme
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'phanviet/vim-monokai-pro'
Plug 'mbbill/undotree'
"Plug 'https://github.com/adelarsq/vim-matchit'
"Plug 'simnalamburt/vim-mundo'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-fugitive'
Plug 'ap/vim-css-color'
Plug 'wellle/context.vim'
Plug 'prettier/vim-prettier', {
	\ 'do': 'yarn install --frozen-lockfile --production',
	\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json',
	\ 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'dense-analysis/ale'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Initialize plugin system
call plug#end()


" 4.SET
" BASIC SETUP:

" do not look for compatibility with old vi
set nocompatible

" enable syntax and plugins (for netrw)
set exrc
set number
set relativenumber
set hlsearch
set hidden
set noerrorbells
set vb t_vb=
set smartindent
set ic
set smartcase
set tabstop=3
set shiftwidth=3
set softtabstop=0 noexpandtab
"set nowrap
set cursorline
"set cursorcolumn
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
syntax enable
filetype plugin on

set incsearch
set scrolloff=8
" set colorcolumn=80
set signcolumn=yes
set showcmd

" disable auto commenting to next line
" :help fo-table
set formatoptions-=cro


" Luke Smith
set title
set bg=dark
set go=a
set mouse=a
set clipboard+=unnamedplus
" set noshowmode

set t_Co=256
set termguicolors
"let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_termcolors = '16'
if has("gui_running")
	colorscheme base16-3024
	highlight LineNr guifg=#996600
	highlight LineNr guibg=black
else 
	"colorscheme gruvbox
	colorscheme monokai_pro
	highlight Normal guibg=none
endif



" 5-SNIPPETS:
"
" Read an empty HTML template and move cursor to title
nnoremap ,html :read $HOME/.config/nvim/.skeleton.html<CR>3jwf>a
" nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

" 6-COMMAND
command! DATAON cd ~/Dropbox/notes/dataon
command! TECH cd ~/Dropbox/notes/tech
command! PE cd ~/Dropbox/notes/personal


" FINDING FILES: - THOUGHTBOT

" Search down into subfolders
" Provides tab-completion for all file-relates tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer
" - :ls show files openned
" - :bw clear screen


" TAG JUMPING:
"
" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags, show list of tags and just put a number to go
" - Use ^t to jump back up the tag stack
"
" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags



" AUTOCOMPLETE:
"
" The good stuff is documented in |ins-completion|
"
" HIGHLIGHTS:
" - ^x^n for JUST this file
"   ^x^f for filenames (works with our path trick!)
"   ^x^] for tags only
"   ^n for anything specified by the 'complete' option
"
" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list




" FILE BROWSING:
"
" Tweaks for browsing
let g:netrw_banner=0		" disable annoying banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1		" open splits to the right
let g:netrw_liststyle=3		" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\S\s\)\zs\.\S\+'
let g:netrw_winsize=25
let g:netrw_preview=1


" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings




" BUILD INTEGRATION:
"
" Steal Mr. Bradley's formatter and add it to our spec_helper
" http://philipbradley.net/rspec-into-vim-with-quickfix
"
" Configure the `make` command to run RSpec
set makeprg=bundle\ exec\ rspec\ -f\ QuickFixFormatter

" NOW WE CAN:
" - Run :make to run RSpec
" - :cl to list errors
" - :cc# to jump to error by number
" - :cn and :cp to navigate forward and back


" Use Help in VIM:
" :h ^r
" :h i_^r
" :h c_^r
" :helpgrep windows, after run through the list using :cl, :cc, :cn or :cp
" - :cl to list errors
" - :cc# to jump to error by number
" - :cn and :cp to navigate forward and back


"autocommand example TrimWhitespace
"fun! TrimWhitespace()
"	let l:save = winsaveview()
"	keeppatterns %s/\s\+$//e
"	call winrestview(l:save)
"endfun
"
"augroup THE_PRIMEAGEN
"	autocmd!
"	autocmd BufWritePre * :call TrimWhitespace()
"augroup END


vnoremap H 0
nnoremap H 0
nnoremap L $
vnoremap L $
inoremap jk <esc>

"surround visual block with quotes
vmap \q c()<ESC>P

source ~/.config/nvim/shortcut.vim
