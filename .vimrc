"
" Referenced here: http://www.benorenstein.com/blog/your-first-vimrc-should-be-nearly-empty/

" Original Author:	 Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Last change:	         2012 Jan 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Switch syntax highlighting on
syntax on

set mouse=a

" Make backspace behave in a sane manner.	
set backspace=indent,eol,start

set autoindent
set cindent

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" when indenting with '>', use 2 spaces width
set shiftwidth=2

" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2

" stop vim from converting eight spaces to tab
set expandtab

" Add numbering to vim
set number

" set fzf git file fuzzy find to control+p
nnoremap <C-p> :GFiles<Cr>

" Install vim-plug if not found
" let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
let data_dir = '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Ruby plugins
  Plug 'vim-ruby/vim-ruby'

  Plug 'tpope/vim-rails'
call plug#end()

