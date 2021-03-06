" initialize pathogen to get all the plugins working
execute pathogen#infect()
filetype plugin on
filetype indent on

" Allow .vimrc files in the project folder for project-specific spacing, and `#include` folders.
set exrc
set secure

set background=dark " Show the dark version of the colors.
colors elflord

set mouse=a " Mouse support in Terminal.app

syntax on
set smartcase
set hlsearch " Highlight the words for which you just searched.

set spell spelllang=en_us
set nospell

" show whitespaces
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»

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
set statusline=%F%m%r%h%w
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=\ %{&ff}\ %Y\ %=[\%03.3b,\ 0x\%02.2B]\ %p%%\ %l/%L,%v
set laststatus=2

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Easier tab switching in insert mode.
map <C-j>	:tabprev<CR>
map <C-k>	:tabnext<CR>
imap <C-j>	<ESC>:tabprev<CR>
imap <C-k>	<ESC>:tabnext<CR>

" Tell netrw to show tree view by default, P.S. press `i` to loop through other views.
let g:netrw_liststyle=3
"let g:netrw_browse_split=2
" netrw by default leaves unmodified buffers open preventing :q
autocmd FileType netrw setl bufhidden=delete

if executable('rls')
	au User lsp_setup call lsp#register_server({
		\ 'name': 'rls',
		\ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
		\ 'whitelist': ['rust'],
		\ })
endif

