set nocompatible              " be iMproved, required
filetype off                  " required

syntax on

filetype plugin on

set backspace=2
set background=dark
set tw=78

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set hlsearch
set si

map ,# :s/^/#/<CR> <Esc>:nohlsearch <CR>
map ,/ :s/^/\/\//<CR> <Esc>:nohlsearch <CR>
map ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR> <Esc>:nohlsearch <CR>

nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l

"format JSON
map <leader>jt !python -m json.tool<CR>
