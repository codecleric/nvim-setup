let mapleader = ","
set nocompatible              " be iMproved, required
filetype off                  " required

" Assumes vundler is installed at `${HOME}/.vim/bundle`
"  > git clone https://github.com/VundleVim/Vundle.vim.git ./bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Brief Vundle help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" regenerate by running:: 
"   > vim +PluginInstall +qall
"   > mvim +PluginInstall +qall
call vundle#begin()
 Plugin 'VundleVim/Vundle.vim'
  " General environment improvement
  Plugin 'vim-scripts/genutils'
  Plugin 'tpope/vim-sensible'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-fugitive'
  Plugin 'nelstrom/vim-visual-star-search'
  "Plugin 'ervandew/supertab' NOTE: Trying out YouCompleteMe
  Plugin 'vim-scripts/Rename'
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
  Plugin 'vim-scripts/EasyGrep'

  " Need to have exuberant ctags installed for tagbar
  Plugin 'majutsushi/tagbar'

  " UtiliSnips; https://github.com/SirVer/ultisnips
  "   also see https://github.com/panozzaj/conf/blob/master/common/.vim/UltiSnips/javascript.snippets
  Plugin 'SirVer/ultisnips'
  " Plugin 'honza/vim-snippets' " Snippets are separated from the engine. Add this if you want them

  Plugin 'Valloric/YouCompleteMe' " YouCompleteMe: a code-completion engine for Vim

  Plugin 'powerline/powerline'
  "Plugin 'ctrlpvim/ctrlp.vim'
  "Plugin 'rking/ag.vim' " the silver searcher
  Plugin 'sotte/presenting.vim'
  Plugin 'mileszs/ack.vim'
  Plugin 'aquach/vim-http-client'
  Plugin 'Keithbsmiley/investigate.vim'

  " Navigation
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'xuyuanp/nerdtree-git-plugin'
  "Plugin 'scrooloose/syntastic'
  "Plugin 'jistr/vim-nerdtree-tabs'
  Plugin 'vim-scripts/SelectBuf'

  " Specific stack support
  Plugin 'moll/vim-node'
  Plugin 'pangloss/vim-javascript'
  Plugin 'chrisbra/csv.vim'
  Plugin 'hashivim/vim-hashicorp-tools'
  Plugin 'b4b4r07/vim-hcl'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'IN3D/vim-raml'
  Plugin 'ekalinin/Dockerfile.vim'
  Plugin 'nicr9/vim-orca'
  Plugin 'Shougo/vimproc.vim'
  Plugin 'Shougo/vimshell.vim'

  " Themes
  Plugin 'nanotech/jellybeans.vim'
  Plugin 'flazz/vim-colorschemes'
    
call vundle#end()            " required

" Put your non-Plugin stuff after this line

filetype plugin indent on    " required

set noswapfile
set nobackup

set expandtab shiftwidth=2 tabstop=2 encoding=utf-8

"set modelines=0
set cursorline
set paste
set nowrap
"set number
set nowritebackup
set hlsearch

"set ignorecase
"set smartcase
"--- NERDTree stuff ---"
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"--- UtiliSnips config, from https://github.com/SirVer/ultisnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

"colorscheme Nightshimmer
"colorscheme darkspectrum
"colorscheme rootwater
"colorscheme darkblue2
colorscheme vividchalk
"colorscheme jellybeans
let g:pymode_lint_write = 0

" Built in file explorer
let g:netrw_liststyle=3

