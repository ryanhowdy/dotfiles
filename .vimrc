" F12 un highlights search
nnoremap <F12> :nohl<CR>

" F9 fixes syntax highlighting
nnoremap <F9> :syntax sync fromstart<CR>

" turn on syntax highlighting
syntax enable
syntax on

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" use spaces instead of tabs
set expandtab
let &expandtab=1

" do not wrap lines
set nowrap

" turn on line numbers
set number

" us highlighting during search
set hlsearch

" show matching words during search
set showmatch

" ignore case during searching
set ignorecase

" if you searched for capital letters, override ignore case and use case sensitive
set smartcase

set incsearch
set noscrollbind
set ruler
set t_Co=256
set bs=2
set tabstop=4
set shiftwidth=4
let &ai=0

colorscheme ryan

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

set fileformat=unix

let php_baselib = 1

" single char insert
:nmap <Space> i_<Esc>r

" map jj to esc
:imap jj <Esc>

" php autocomplete
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set ofu=syntaxcomplete#Complete
