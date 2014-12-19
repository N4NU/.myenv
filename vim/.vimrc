"-----------------------------------------------------------

set title
syntax on
imap <c-]> <esc>
nmap <c-e> :NERDTreeToggle<CR>
nmap <c-f> :TagbarToggle<CR>

"-----------------
" Indent
"-----------------
set tabstop=4
set softtabstop=0
set shiftwidth=4
set smartindent
set smarttab 
set showmatch


" Tab -> Space
set expandtab


"-------
" Other
"-------
set clipboard=unnamed
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%

" Color
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade  ctermbg=none ctermfg=blue

"macvim
if has("gui_running")
    colorscheme desert
endif

set fileformats=unix,mac

set ambiwidth=double

"----------------------

set laststatus=2

set display+=lastline

set number
set ruler


"--------------------------------------------------------------------------
" neobundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    endif

    call neobundle#rc(expand('~/.vim/bundle/'))

    filetype plugin indent on     " Required!

" Installation check.
if neobundle#exists_not_installed_bundles()
    echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
    echomsg 'Please execute ":NeoBundleInstall" command.'
    "finish
endif

" Plugins
NeoBundle 'vim-fugitive'
NeoBundle 'lightline.vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'majutsushi/tagbar'



" syntastic
execute pathogen#infect()
