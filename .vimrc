" initialize pathogen to get all the plugins working
call pathogen#infect()
filetype plugin on
filetype indent on

" Allow .vimrc files in the project folder for project-specific spacing, and `#include` folders.
set exrc
set secure

colors elflord
set background=dark " Show the dark version of the colors.

syntax on
set ignorecase
set smartcase
set hlsearch " Highlight the words for which you just searched.

set spell spelllang=en_us
set nospell

" Use sane tab settings.
set noexpandtab		" Tabs exist to let people change the width. Spaces force a style.
set tabstop=4		" 4 is a language-agnostic standard.
set shiftwidth=4	" If expandtab is turned on, 4 is a language-agnostic standard.
set autoindent 		" Remember `:paste` `:nopaste` toggles indenting off or on respectively for Ctrl+V in insert mode.

" I don't like a copy of my files lying around.
set noswapfile
set nowritebackup
set nobackup
set directory=/dev/null
set backupdir=/dev/null

" filename encoding filetype      [dec, hex] location% line/maxlines,col
set statusline=%F%m%r%h%w\ %{&ff}\ %Y\ %=[\%03.3b,\ 0x\%02.2B]\ %p%%\ %l/%L,%v
set laststatus=2

" Easier tab switching in insert mode.
map <C-j>	:tabprev<CR>
map <C-k>	:tabnext<CR>
imap <C-j>	<ESC>:tabprev<CR>
imap <C-k>	<ESC>:tabnext<CR>

" Tell netrw to show tree view by default, P.S. press `i` to loop through other views.
let g:netrw_liststyle=3

