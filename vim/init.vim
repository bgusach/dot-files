" Symlink this file to:
" - windows: ~/vimfiles/vimrc
" - linux (neovim): ~/.config/nvim/vim.init

set nocompatible  " Deactivate VI compatibility
set encoding=utf-8
set autoread  " Reloads file if changes detected
set tabstop=4 shiftwidth=4 expandtab " Set indentation spaces
" set relativenumber
set number
set breakindent
set hlsearch  " Highlight search results
set backspace=2   " Some hack so that backspace works properly in windows
set gdefault  " Inverts the /g. Global modifier per default
set guicursor=  " Fixes weird characters problem
set mouse=a  " Enables mouse clicking

" Using vim-plug: https://github.com/junegunn/vim-plug
" vim-plug plugins
" Remember to call :PlugInstall after changing anything.
call plug#begin()
" Plug 'Raimondi/delimitMate'
" Plug 'Valloric/YouCompleteMe'
Plug 'morhetz/gruvbox' 
" Plug 'tpope/vim-eunuch'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-commentary'
" https://nikvdp.com/post/neomux/
Plug 'nikvdp/neomux'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
Plug 'chrisbra/recover.vim'

call plug#end()

" Activate gruvbox theme
set background=dark
colorscheme gruvbox

" Set airline theme
let g:airline_theme = 'distinguished'

set guifont=Consolas:h14,Inconsolata:h14

" Set temp files stuff
let vim_temp = $HOME . '/.vimtemp//' 

if !isdirectory(vim_temp)
    call mkdir(vim_temp, 'p')
endif

set backup
let &backupdir = vim_temp
set undofile
let &undodir = vim_temp
let &directory = vim_temp  " For .swp files


" Screen splitting stuff
" Move directly between panes by using alt + jklh
" tnoremap <A-h> <C-\><C-N><C-w>h
" tnoremap <A-j> <C-\><C-N><C-w>j
" tnoremap <A-k> <C-\><C-N><C-w>k
" tnoremap <A-l> <C-\><C-N><C-w>l
" inoremap <A-h> <C-\><C-N><C-w>h
" inoremap <A-j> <C-\><C-N><C-w>j
" inoremap <A-k> <C-\><C-N><C-w>k
" inoremap <A-l> <C-\><C-N><C-w>l
" nnoremap <A-h> <C-w>h
" nnoremap <A-j> <C-w>j
" nnoremap <A-k> <C-w>k
" nnoremap <A-l> <C-w>l

" set splitbelow
" set splitright

" Allow <ctrl-r> within terminal mode
:tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
