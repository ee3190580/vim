syntax on
set termguicolors
"set term=xterm-256color
let g:solarized_termcolors=256
set background=light
colorscheme solarized8_high

noremap <F8> <ESC> :w <CR> :!g++ -std=c++17 -Wshadow -Wall -o %< % -O2 -Wno-unused-result <CR>
inoremap <F8> <ESC> :w <CR> :!g++ -std=c++17 -Wshadow -Wall -o %< % -O2 -Wno-unused-result <CR>
noremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % <CR>
inoremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % <CR>
noremap <F1> <ESC> :vert term <CR> <C-W>r <C-W>20<
inoremap <F1> <ESC> :vert term <CR> <C-W>r <C-W>20<


set number relativenumber
set autoindent
set autoread
set cin
set expandtab
set guifont=Menlo\ Regular:h16
set history=1000
set hlsearch
set ignorecase
set incsearch
set mousehide
set noerrorbells
set noswapfile
set pastetoggle=
set shiftwidth=4
set smarttab
set tabstop=4
set vb t_vb=
set shellslash
filetype indent on

"Clipboard configuration
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
        augroup WSLYank
                    autocmd!
                            autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
                                augroup END
                            endif

        au BufNewFile,BufRead *.tex
            \ set nocursorline |
            \ set nornu |
            \ set number |
            \ let g:loaded_matchparen=1 |
