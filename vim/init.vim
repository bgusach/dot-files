" Symlink this file to:
" windows: ~/vimfiles/gvimrc
" linux: ~/.config/vim/vim.init --> not 100% sure there

" Set tab to 4 spaces
set tabstop=4 shiftwidth=4 expandtab

set relativenumber
set number
set breakindent

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

" TODO: switch between consolas/inconsolata depending on SO
set guifont=Consolas:h14:cANSI:qDRAFT
