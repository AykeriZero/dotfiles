
syntax on
colo pablo

"set number
set backspace=2

filetype plugin indent on

" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert spaces
set expandtab

set autoindent
set cindent

inoremap {<CR> {<CR>}<Esc>ko<Tab>

inoremap (<CR> (<CR>);<Esc>ko<Tab>

"inoremap ><CR> ></<C-P>><Esc>2ba<CR><Esc>ko<Tab>
"inoremap ><Tab> ></<C-P>><Esc>2ba

" ctags
set tags=./.tags;,.tags;

" iPad no ESC key
imap ii <ESC>
