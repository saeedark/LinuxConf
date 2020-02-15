set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}



"---------------added by myself---------------------------
" Auto complete Plugin 
Plugin 'Valloric/YouCompleteMe'

"syntastic
Plugin 'scrooloose/syntastic'

"airline which is at bottom 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"latex support for matching
"Plugin 'edsono/vim-matchit'

Plugin 'honza/vim-snippets'

"Tagbar which add at right to see overview of all the huging code which your idiot mind hast wrote
Plugin 'majutsushi/tagbar'
 
"vim signify which help us at vcs / would someaday i use it 
Plugin 'mhinz/vim-signify'

"vim mark down addition
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

"Vim tree nerd for foldering thing that i like a lot
Plugin 'preservim/nerdtree' 
Plugin 'Xuyuanp/nerdtree-git-plugin'


"Some of then for git and other stuff that i will learn latter
"Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sleuth'

"Openlinker 
Plugin 'tyru/open-browser.vim'

"colorschemse and beauty staff
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'

"searching for autocomplete 
Plugin 'townk/vim-autoclose'

"Syntax folding make enabel 
Plugin 'c.vim'
Plugin 'klen/python-mode'

"Folding fold simple
Plugin 'tmhedberg/SimpylFold'

"Function helper autocompleter argument parameter
Plugin 'Shougo/echodoc'

"ycm_extra_conf.py generator the huging thing about it
Plugin 'rdnetto/YCM-Generator'


" latex preview tools
Plugin 'xuhdev/vim-latex-live-preview'

"Latex suite
Plugin 'vim-latex/vim-latex'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2017 Sep 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

"added by myself to destroy
"

"added to work well with powerline fonts
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


"Add on Plugin 
"ActivateAddons vim-snippets snipmate

"something for nerdgittree
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


"autostart nerdtree
"autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

"make extra conf for ycm 
let g:ycm_global_ycm_extra_conf = '/home/saeed/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'


"Maybe Next Line Removes the Red line caused by pymode
autocmd BufRead *.py setlocal colorcolumn=0


" tagbar Which gonna be help ful and make myself fell better 
nmap <F8> :TagbarToggle<CR>

"latex preview config
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'xelatex'
let g:livepreview_cursorhold_recompile = 0


"
set number
set autoindent
set background=dark
"colorscheme delek
set tabstop=4
set softtabstop=4
set showcmd
"set cursorline
filetype indent on 
set wildmenu
set showmatch
set incsearch
set hlsearch
"nnoremap <leader><space> :nohlsearch<CR>
"noremap <C-n> :nohl<CR>
"vnoremap <C-n> :nohl<CR>
"inoremap <C-n> :nohl<CR>
set foldenable
set foldlevel=99
set foldmethod=syntax
set smartcase
set noic
set laststatus=2
set relativenumber 
set title
"set spell
"set mouse=a
set splitbelow
set splitright

" the way that i love folding text 
function! Fff()
  let n1 = v:foldend - v:foldstart + 1
  let linetext = substitute(getline(v:foldstart),"^ *","",1)
  let txt = '+ ' . linetext . '        line ' . n1 . '       '
  return txt
endfunction
set foldtext=Fff()

