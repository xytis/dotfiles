" ========================================
" Vim plugin configuration
" ========================================

if &compatible
  set nocompatible
endif

set runtimepath^=~/.config/nvim/plugins
set runtimepath^=~/.config/nvim/dein
call dein#begin(expand('~/.config/nvim/cache'))

call dein#add('Shougo/dein.vim')

runtime appearance.vim
runtime base.vim
runtime git.vim
runtime languages.vim
runtime search.vim
runtime textobjects.vim
runtime vim-improvements.vim

call dein#end()

"Filetype plugin indent on is required by vundle
filetype plugin indent on

if dein#check_install()
  call dein#install()
endif
