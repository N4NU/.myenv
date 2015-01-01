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

source ~/.vimrc.profile

