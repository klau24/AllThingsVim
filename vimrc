set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'morhetz/gruvbox'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'
Plugin '907th/vim-auto-save'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            " required
filetype plugin indent on    " required

" gruvbox
let g:gruvbox_improved_strings = '1'
let g:gruvbox_improved_warnings = '1'
let g:airline_theme = 'bubblegum'
colorscheme gruvbox
set background=dark 


:set number relativenumber
set splitright
set tabstop=3
set shiftwidth=3
set expandtab
syntax on
set autoindent
set smartindent
set nowrap
set showcmd
" allows for backspace in insert mode
set backspace=indent,eol,start
" saves my location in a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif


" syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:stntastic_auto_jump = 1

"vim-auto-save
let g:auto_save = 1

nnoremap <Tab> <C-w><C-w>
nnoremap <Leader>+ 10<C-w>> 
nnoremap <Leader>- 10<C-w>< 

