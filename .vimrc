" F12 un highlights search
nnoremap <F12> :nohl<CR>
" F9 to fix syntax highlighting
nnoremap <F9> :syntax sync fromstart<CR>

syntax enable
set showmatch
set nocompatible
set bs=2
set tabstop=4
set shiftwidth=4
let &ai=0
let &expandtab=1
set nowrap
set hlsearch
set incsearch
set noscrollbind
set ruler
set number
set t_Co=256
colorscheme ryan

set fileformat=unix

let php_baselib = 1

" single char insert
:nmap <Space> i_<Esc>r

" map jj to esc
:imap jj <Esc>

" map <F2> to print_r
:nmap <F2> iecho '<pre>'; print_r(); echo '</pre>';<Esc>bbba

" t - wrap T_('') around selected text
:vmap t "zdiT_('<C-R>z')<Esc>

au BufNewFile,BufRead *.less set filetype=less
