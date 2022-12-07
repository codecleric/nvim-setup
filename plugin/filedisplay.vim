" Various settings
"set lines=64
"set columns=180

set guitablabel=%t
set guitabtooltip=%F
set nocompatible    " vim mode -- who wants standard vi anyway?  ;)
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent		" always set autoindenting on
set nobackup		" do not keep a backup file, use versions instead
set history=50		" keep 50 lines of command line history
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set showmatch       " show matching parens
set incsearch		" do incremental searching
set hlsearch        " highlighting for searching
"set guifontset=
"set gfn=Andale\ Mono:h12
set guioptions=cegmrLtT
set virtualedit=block
set browsedir=buffer
set wildmenu
set wildcharm=<C-Z>
set wildignore+=*.pyc,*.pyo,~*,*.o,*.obj,*.exe,*.bak

"set enc=utf-8

set smartcase
set smartindent

" Line wrapping
set nowrap
set textwidth=0
set formatoptions=tcql

" When I want wrap on
command! -nargs=* Wrap set wrap linebreak nolist
command! -nargs=* Unwrap set nowrap linebreak nolist

" Show me the wraps
set showbreak=…

" Tabstops -- all 4
set tabstop=5
set shiftwidth=5
set softtabstop=5
set expandtab           " expand those nasty tabs to spaces
set shiftround          " shifting uses nearest multiple of shiftwidth

"set fuoptions=maxvert,maxhorz

set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo
set suffixesadd=.py,.pyx

set grepprg=grep\ -rnH
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f

syntax on

" Settings for file explorer
let g:explVertical=1
let g:explStartRight=0
let g:explStartBelow=1

" let g:explHideFiles='\.pyc$,\.pyo$,\.DS_Store$,\.swp$'
let g:netrw_list_hide='\.py[co]$,\.DS_Store$,\.swp$'
"let g:explDirsFirst=1
"let g:explSuffixesLast=1
"let g:explSortBy='name'
"let g:explUseSeparators=1

" Settings for vim plugins
let html_use_css = 1
let python_highlight_all = 1
let python_highlight_space_errors = 0
"
" Settings for dbext plugin
let g:dbext_default_profile_RALLY='type=ODBC:user=sa:passwd=ESOAdmin!:dsnname=RALLY:dbname=Rally'
let g:dbext_default_profile_BZ='type=ODBC:user=sa:passwd=ESOAdmin!:dsnname=BUGZILLA:dbname=Bugzilla'
let g:dbext_default_profile = 'RALLY'
let g:dbext_default_use_sep_result_buffer = 1

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
endfunction
"
" Coffee script
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.jsy setl shiftwidth=2 tabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.py setl shiftwidth=4 tabstop=4 expandtab

set backupdir=~/.vim/backup//
set directory=~/.vim/backup//
