" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Notational FZF
Plug 'https://github.com/alok/notational-fzf-vim'
set rtp+=/usr/local/opt/fzf
let g:nv_search_paths = ['~/Documents/notes']

call plug#end()
