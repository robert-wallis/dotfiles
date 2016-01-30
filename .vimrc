call pathogen#infect()
set background=dark

let g:alduin_Shout_Windhelm = 1
colors alduin

syntax on
set ignorecase
set smartcase
set hlsearch

set spell spelllang=en_us
set nospell

set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent

set noswapfile
set nowritebackup
set nobackup
set directory=/dev/null
set backupdir=/dev/null

set statusline=%F%m%r%h%w\ %{&ff}\ %Y\ %=[\%03.3b,\ 0x\%02.2B]\ %p%%\ %l/%L,%v
set laststatus=2

map <C-j>	:tabprev<CR>
map <C-k>	:tabnext<CR>
imap <C-j>	<ESC>:tabprev<CR>
imap <C-k>	<ESC>:tabnext<CR>

filetype plugin on
filetype indent on
