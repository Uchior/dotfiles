if 0 | endif
if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/budle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'justmao945/vim-clang'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'nanotech/jellybeans.vim'

NeoBundleCheck

call neobundle#end()

filetype plugin indent on

let g:clang_cpp_options = "-std=c++11"

syntax on
set hidden
set number
set title
set showmatch
set tabstop=2
set shiftwidth=2
set expandtab
set cindent
set backspace=eol,start,indent

set ignorecase
set smartcase
set wrapscan
se t_Co=256

let g:jellybeans_overrides = {
      \    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
      \              'ctermfg': 'Black', 'ctermbg': 'Yellow',
      \              'attr': 'bold' },
      \}
:colorscheme jellybeans

