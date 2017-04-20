" Symlink this file to:
" windows: ~/vimfiles/gvimrc
" linux (neovim): ~/.config/vim/vim.init --> not 100% sure there

set encoding=utf-8
set autoread  " Reloads file if changes detected
set tabstop=4 shiftwidth=4 expandtab " Set tab to 4 spaces
set relativenumber
set number
set breakindent
set hlsearch  " Highlight search results

" vim-plug plugins
" Remember to call :PlugInstall after changing anything.
call plug#begin()
Plug 'Raimondi/delimitMate'
Plug 'pangloss/vim-javascript'
" Plug 'Valloric/YouCompleteMe'
Plug 'morhetz/gruvbox' 
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

