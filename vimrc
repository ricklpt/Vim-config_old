"Needed for pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Basics {
  set nocompatible " No vi compatility
  let mapleader="," " Mapleader
  filetype plugin indent on " Automatically change file types.
  set encoding=utf-8
  set history=1000 " Keep (a lot) more history

  " No need for backups, I have Git and Dropbox for that
  set noswapfile 
  set nobackup
" }

" Vim UI {
  syntax enable
  set background=dark " Set dark solarized theme
  set t_Co=256 " 256 colors"

  set textwidth=80 " Switch line at 80 characters
  set scrolloff=5 " Keep some distance to the bottom"

  set showmatch " Show matching of: () [] {}

  " Searching {
    set ignorecase " Case insensitive search
    set smartcase " Case sensitive when uppercase is present
    set incsearch " Search as you type
  " }
" }

" Statusline {
  set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" }

" Formatting {
  " Be smart, and awesome, about indentation
  set autoindent " Indent at the same level as previous line
  set smartindent
  set smarttab
  set expandtab " Tabs are spaces

  set tabstop=2 " Tabs are 2 spaces
  set backspace=2 " Backspace back 2 spaces
  set shiftwidth=2 " Even if there are tabs, preview as 2 spaces
" }

  " NerdTree {
    let NERDTreeChDirMode = 1
    let NERDTreeWinSize=20

    let NERDTreeHighlightCursorline=1
    :noremap ,n :NERDTreeToggle<CR>
  " }

"Fugitive {
    nnoremap <leader>gs :Gstatus<CR>
    nnoremap <leader>gc :Gcommit<CR>
  " }
