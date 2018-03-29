execute pathogen#infect()
let g:ycm_global_ycm_extra_conf="~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let mapleader=" "

syntax on
filetype plugin indent on

" Search
set incsearch
set hlsearch
nmap <silent> <Leader>/ :nohlsearch<CR>

set ignorecase
map <silent> <F12> :set ignorecase!<CR>

" Color scheme
set t_Co=256

"let g:solarized_termcolors=256
"let g:solarized_termtrans=256
"
"let g:solarized_bold=1
"let g:solarized_underline=1
"let g:solarized_italic=1
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"

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

" Show relative line numbers
set relativenumber
map <silent> <F9> :set norelativenumber!<CR>

set pastetoggle=<F10>

" NERD Tree
map <silent> <Leader>t :NERDTreeToggle<CR>

" NERD Commenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

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

" File navigation
nmap <C-k> gf
nmap <C-j> :bf<CR>
