" Symlink this file to:
" - windows: ~/vimfiles/vimrc
" - linux (neovim): ~/.config/nvim/vim.init

set nocompatible  " Deactivate VI compatibility
set encoding=utf-8
set autoread  " Reloads file if changes detected
set tabstop=2 shiftwidth=2 expandtab " Set indentation spaces
set relativenumber
set number
set breakindent
set hlsearch  " Highlight search results
set backspace=2   " Some hack so that backspace works properly in windows
set gdefault  " Inverts the /g. Global modifier per default

" vim-plug plugins
" Remember to call :PlugInstall after changing anything.
call plug#begin()
Plug 'Raimondi/delimitMate'
Plug 'pangloss/vim-javascript'
" Plug 'Valloric/YouCompleteMe'
Plug 'morhetz/gruvbox' 
Plug 'tpope/vim-eunuch'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" Activate gruvbox theme
set background=dark
colorscheme gruvbox

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
" Move directly between panes by using ctrl + jklh
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

