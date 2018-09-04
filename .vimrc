let mapleader=','
noremap \  ,

:set number
:syntax on

nnoremap ZZ <Nop>
nnoremap ZQ <Nop>


language message C

set wildmenu 
set wildmode=longest,full
set formatoptions+=mM 
set modeline 
set incsearch 
set ignorecase 
set noswapfile 
set nobackup   
set noundofile  
set mouse=a
set nowrap 
set hidden  
set confirm 
set nrformats=  
set shortmess+=I  
set cmdheight=1 

set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
set noequalalways 
set winheight=8 
set winwidth=8 
set completeopt=menuone 
set nofoldenable 
set noshowmode 
set ambiwidth=double
hi MatchParen term=standout ctermbg=NONE ctermfg=white cterm=BOLD gui=BOLD
nmap <C-l> <C-l>:nohlsearch<CR>:call clearmatches()<CR>
nnoremap <C-]> g<C-]>

