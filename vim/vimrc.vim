execute pathogen#infect()
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let mapleader = " "

syntax on
filetype plugin indent on

" Search
set incsearch
set hlsearch

" Color scheme
set background=light
colorscheme solarized

" Highlight current line
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Show existing tab with 4 spaces width
set tabstop=4
" When indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Show line numbers
set number
nmap <F9> :set nonumber!<CR>

set pastetoggle=<F10>

map <silent> <C-n> :NERDTreeFocus<CR>

" Trim white space
map <silent> <C-l> :%s/\s\+$//e<CR>

" Macro with space
nmap <Leader><Space> @q

" Splits
set splitbelow
set splitright

nmap <Leader>v <C-W>v
nmap <Leader>s <C-W>s

" Tab navigation
map <F8> :tabnext<CR>
map <F7> :tabprevious<CR>
map <F6> :tabnew<CR>

" Window management
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>
nmap <Leader>a :qa<CR>
