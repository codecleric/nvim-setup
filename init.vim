let mapleader = ","
set nocompatible              " be iMproved, required

" Assumes vim-plug is installed at `${HOME}/.vim/autoload`
"  > https://github.com/junegunn/vim-plug

filetype off                  " required
if has('win32')
    call plug#begin('~/vimfiles/plugged')
else
    call plug#begin('~/.config/nvim/plugged')
endif
  " General environment improvement
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-db'
  Plug 'tpope/vim-jdaddy'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-dadbod'
  Plug 'LnL7/vim-nix'

  Plug 'nelstrom/vim-visual-star-search'
  Plug 'ryanoasis/vim-devicons'
  Plug 'ap/vim-css-color'
  Plug 'mhinz/vim-startify'
  "Plug ''
  "status line
  "
  "Plug 'powerline/powerline'
  Plug 'itchyny/lightline.vim'

  Plug 'ervandew/supertab'

  " Need to have exuberant ctags installed for tagbar
  Plug 'preservim/tagbar'

  " UtiliSnips; https://github.com/SirVer/ultisnips
  "   also see https://github.com/panozzaj/conf/blob/master/common/.vim/UltiSnips/javascript.snippets
  Plug 'SirVer/ultisnips'

  Plug 'sotte/presenting.vim'
  Plug 'mileszs/ack.vim'
  Plug 'aquach/vim-http-client'
  Plug 'Keithbsmiley/investigate.vim'

  " Navigation
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  if !has('win32')
    Plug 'xuyuanp/nerdtree-git-plugin'
  endif
  Plug 'vim-scripts/genutils'
  Plug 'vim-scripts/SelectBuf'

  " Specific stack support
  Plug 'chrisbra/csv.vim'
  Plug 'hashivim/vim-hashicorp-tools'
  Plug 'b4b4r07/vim-hcl'
  Plug 'kchmck/vim-coffee-script'
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'neo4j-contrib/cypher-vim-syntax'
  Plug 'isobit/vim-caddyfile'
  Plug 'earthly/earthly.vim'
  "Plug 'nicr9/vim-orca'
  "
  "Vim only
  "Plugin 'Shougo/vimproc.vim'
  "Plugin 'Shougo/vimshell.vim'
  if !has('win32')
    Plug 'codecleric/simpleterm.vim'
  endif
  "Plug 'elzr/vim-json'
  "
" JavaScript stack -- updated from https://davidosomething.com/blog/vim-for-javascript/
  Plug 'jsy-lang/vim-jsy'
  Plug 'jelera/vim-javascript-syntax'
  " Plug 'mxw/vim-jsx'
  Plug 'moll/vim-node'   " jump through require statements

  Plug 'wavded/vim-stylus'
  Plug 'leafgarland/typescript-vim'
  Plug 'gutenye/json5.vim'

  Plug 'ap/vim-css-color'
  Plug 'Quramy/vim-js-pretty-template'
" End JavaScript stack
"
  Plug 'gabrielelana/vim-markdown'


  " Themes
  Plug 'nanotech/jellybeans.vim'
  Plug 'flazz/vim-colorschemes'
  Plug 'drmikehenry/vim-fontsize'
  "Plug 'nathangrigg/vim-beancount'
    
call plug#end()            " required

" fugitive stuff

filetype plugin indent on    " required
set encoding=UTF-8

if has('win32')
    set swapfile
    set dir=~/.swap-files
else
    set noswapfile
endif
set nobackup

set expandtab shiftwidth=2 tabstop=2

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filename': 'LightlineTruncatedFilename'
      \ },
      \ }

function! LightlineTruncatedFilename()
    return pathshorten(expand('%:p'), 3)
endfunction

"set modelines=0
set cursorline
set nopaste
set nowrap
set number
set nowritebackup
set hlsearch

if !empty(glob(expand("~/.nvimlocal.vim")))
   source ~/.nvimlocal.vim
endif

set wildmenu
set wildmode=full

let $TMPDIR=$HOME . '/tmp'

" learn vimscript the hard way stuff
"
" When in insert mode, <leader>Ctrl-u will select the current word, uppercase it and
" go back into insert mode
:inoremap <dn><c-u> <esc>viwUi

" When in normal mode, <leader>ev will edit your ~/.vimrc file
":nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>

" When in normal mode, <leader>sv will source your ~/.vimrc file
:nnoremap <leader>sv :source $MYVIMRC<cr>

" Surround the visually selected area with quotes
:vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>

" Cap H goes to the beginning of the line
:nnoremap H ^
" Cap L goes to the end of the line
:nnoremap L $

"jk to get out of insert mode
:inoremap jk <esc>

:nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
:vnoremap <leader>' <esc>`>a"<esc>`<i"<esc>lel

