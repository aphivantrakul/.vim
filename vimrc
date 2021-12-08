set nocompatible " don't use vi settings 
syntax enable " enable syntax and plugins (for netrw)
filetype plugin on
set number relativenumber " show relative and absolute line numbers
set path=.,,,**
set hidden " allow switch buffers without saving
set shortmess-=S " count number of search matches
let g:netrw_fastbrowse = 0
set t_Co=256 " use 256 colors on the terminal
set cursorline " underline current line
hi CursorLine cterm=none ctermbg=252 ctermfg=none " highlight current line with grey background
set ignorecase " case insensitive search
set smartcase " case insensitive search
set wildmenu " show tab options when searching
set wildignore+=*/node_modules/*,*/tmp/*,*/public/* " ignore these folders when searching
set wildmode=list:longest,full
set clipboard=unnamed " copy from vim paste into system using * register
set grepprg=rg\ --smart-case\ --vimgrep
highlight Pmenu ctermbg=245 " change color of autocomplete box
set tabstop=2 " 2 spaces for a tab
set shiftwidth=2
set softtabstop=2
set expandtab

if &diff " turn syntax highlight off when using vimdiff
  syntax off
endif

" block cursor in normal mode, beam in insert mode (alacritty terminal)
let &t_SI = "\<Esc>[6 q" " insert mode
let &t_SR = "\<Esc>[4 q" " replace mode
let &t_EI = "\<Esc>[0 q" " normal mode
