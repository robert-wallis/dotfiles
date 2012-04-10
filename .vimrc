call pathogen#infect()
set background=dark
syntax on
set ignorecase
set smartcase
set tabstop=4
set shiftwidth=4
set autoindent
set hlsearch
set spell spelllang=en_us

set statusline=%F%m%r%h%w\ %{&ff}\ %Y\ %=[\%03.3b,\ 0x\%02.2B]\ %p%%\ %l/%L,%v
set laststatus=2

set directory=~/.vim/tmp
set backupdir=~/.vim/backup

map <F6>	:w<CR>:!php -l %<CR>
map <D-]>	:tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-j>	:tabprev<CR>
map <C-k>	:tabnext<CR>
imap <C-j>	<ESC>:tabprev<CR>
imap <C-k>	<ESC>:tabnext<CR>

filetype plugin on
filetype indent on
