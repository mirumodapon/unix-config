" Automatic install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'msanders/snipmate.vim'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier', { 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html']}

call plug#end()

"

cnoreabbrev tree NERDTree
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0


"

filetype indent on
syntax on
set nu
set cursorline
set shiftwidth=4
set tabstop=4
set ai
set showcmd
set showmode
set ruler
set expandtab
set nowrap
set wildmenu
set wildignore=*.exe,*.jpg,*.jpeg,*.png,*.gif,*.exe,*.docx,*.xlsx,*.pdf
set hlsearch

