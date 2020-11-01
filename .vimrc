syntax on

set nocompatible " use VIM setting rather than legacy VI settings
set backspace=indent,eol,start
" show training space, tabs, spaces etc..
set list
set showbreak=↪\
set listchars=tab:→\ ,eol:¬,nbsp:␣,trail:•,space:·,extends:⟩,precedes:⟨


set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set incsearch
set colorcolumn=80 "show vertical line at 80 characters
set cursorline
set noswapfile

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark


" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"netrw setup"
let g:netrw_banner = 0
let g:netrw_browse_split = 3 "open file in a new tab
let g:netrw_winsize = -25
let g:netrw_liststyle = 3 "tree-view

let mapleader = ","
"remap the navigation between split windowst
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>




" show relative line numbers + toggle
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END



     
