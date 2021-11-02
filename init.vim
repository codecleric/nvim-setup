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
  Plug 'vim-scripts/genutils'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-db'
  Plug 'tpope/vim-jdaddy'
  Plug 'nelstrom/vim-visual-star-search'
  Plug 'vim-scripts/Rename'
  Plug 'ludovicchabant/vim-lawrencium'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'ryanoasis/vim-devicons'

  Plug 'ervandew/supertab'
  " Brief EasyGrep help https://github.com/vim-scripts/EasyGrep
  "  Keymappings:

        "<Leader>vv  - Grep for the word under the cursor, match all occurences,
                    "like |gstar|
        "<Leader>vV  - Grep for the word under the cursor, match whole word, like 
                    "|star|
        "<Leader>va  - Like vv, but add to existing list
        "<Leader>vA  - Like vV, but add to existing list
        "<Leader>vr  - Perform a global search search on the word under the cursor
                    "and prompt for a pattern with which to replace it.
        "<Leader>vo  - Select the files to search in and set grep options

    " Commands:

        ":Grep [arg]
            "Search for the specified arg, like <Leader>vv.  When an ! is added,
            "search like <Leader>vV

        ":GrepAdd [arg]
            "Search for the specified arg, add to existing file list, as in
            "<Leader>va.  When an ! is added, search like <Leader>vA

        ":Replace [target] [replacement]
            "Perform a global search and replace.  The function searches
            "the same set of files a grep for the desired target and opens a dialog to
            "confirm replacement.
        
        ":ReplaceUndo
            "Undoes the last :Replace operation.  Does not stack successive
            "searches; only the last replace may be undone.  This function may not
            "work well when edits are made between a call to Replace and a call to
            "ReplaceUndo.

        ":GrepOptions [arg]
            "Open a window to set grep options.
  Plug 'vim-scripts/EasyGrep'

  " Need to have exuberant ctags installed for tagbar
  Plug 'majutsushi/tagbar'

  " UtiliSnips; https://github.com/SirVer/ultisnips
  "   also see https://github.com/panozzaj/conf/blob/master/common/.vim/UltiSnips/javascript.snippets
  Plug 'SirVer/ultisnips'

  Plug 'powerline/powerline'
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
  Plug 'vim-scripts/SelectBuf'

  " Specific stack support
  Plug 'chrisbra/csv.vim'
  Plug 'hashivim/vim-hashicorp-tools'
  Plug 'b4b4r07/vim-hcl'
  Plug 'kchmck/vim-coffee-script'
  Plug 'ekalinin/Dockerfile.vim'
  "Plug 'nicr9/vim-orca'
  "
  "Vim only
  "Plugin 'Shougo/vimproc.vim'
  "Plugin 'Shougo/vimshell.vim'
  if !has('win32')
    Plug 'gu-fan/simpleterm.vim'
  endif
  Plug 'tlib'
  Plug 'elzr/vim-json'
  Plug 'othree/yajs.vim'
  Plug 'othree/es.next.syntax.vim'
  Plug 'othree/javascript-libraries-syntax.vim'
  Plug 'othree/jsdoc-syntax.vim'
  "Plug 'mxw/vim-jsx'
  Plug 'moll/vim-node'   " jump through require statements
  Plug 'jsy-lang/vim-jsy'
  Plug 'gabrielelana/vim-markdown'

  Plug 'ternjs/tern_for_vim'

  " Themes
  Plug 'nanotech/jellybeans.vim'
  Plug 'flazz/vim-colorschemes'
  Plug 'drmikehenry/vim-fontsize'
  "Plug 'nathangrigg/vim-beancount'
    
call plug#end()            " required
let g:tern#command = systemlist('nvm which current')
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

" learn vimscript the hard way stuff
"
" When in insert mode, <leader>Ctrl-u will select the current word, uppercase it and
" go back into insert mode
:inoremap <dn><c-u> <esc>viwUi

" When in normal mode, <leader>ev will edit your ~/.vimrc file
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

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

