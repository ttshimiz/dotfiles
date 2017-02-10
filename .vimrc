"Colors
set background=dark
let g:solarized_termtrans=1
colorscheme solarized  "set colorscheme
syntax on

"Make Vim more useful
set nocompatible

" Use the OS clipboard by default
set clipboard=unnamed

"Spaces and Tabs
set tabstop=4      "number of visual spaces per TAB
set softtabstop=4  "number of spaces in tab when editing
set expandtab      "tabs are spaces

"UI Config
set number         "show the line numbers
set showcmd        "show command in bottom bar
set cursorline     "highlight the current line
filetype indent on "load filetype-specific indent files
set wildmenu       "visual autocomplete for command menu
set lazyredraw     "redraw only when we need to
set showmatch      "highlight matching brackets, parentheses, etc.
set ruler          "Show the cursor position
set scrolloff=3

"Searching
set incsearch      "search as characters are entered
set hlsearch       "highlight matches
set ignorecase     "ignore case of searches
"map ,<space> to get rid of highlighted search results
nnoremap <leader><space> :nohlsearch<CR>

"Movement
" move to beginning and end of line
nnoremap B ^       
nnoremap E $      
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" Leader Shortcuts
let mapleader=","
inoremap jk <esc>
command! W :w
cmap w!! w !sudo tee % >/dev/null

" Backups
set backup
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set backupskip=/tmp/*,/private/tmp/*
set writebackup

" Don't add empty newlines at the end of files
set binary
set noeol

" Allow backspace in insert mode
set backspace=indent,eol,start

" Allow cursr keys in insert mode
set esckeys

" Disable error bells
set noerrorbells

" toggle between number and relativenumber
function! ToggleNumber()
	if(&relativenumber == 1)
		set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
