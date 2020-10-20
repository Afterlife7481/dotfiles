syntax on

let mapleader = " "
set nocompatible
set backspace=indent,eol,start

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set incsearch
set colorcolumn=80



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

" **** netrw setup **** "
let g:netrw_browse_split = 3 " open file in new tab (1 hor, 2 ver, 3 new, 4 prev)

nnoremap <leader>h :wincmd h<CR>



" **** rebind navigation between split screens **** "
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" enable syntax highlighting
syntax enable

" show relative line numbers + toggle
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END




" enable all Python syntax highlighting features
" let python_highlight_all = 1
