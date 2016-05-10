let shouldLoad = 1

if has("win32") || has("unix")
    echom "Has win32 or unix"
    let shouldLoad = 0
endif

if has("mac")
    echom "Has mac"
    let shouldLoad = 1
endif

if shouldLoad < 1
    echom "Loading DEFAULT Function Key Maps"

    "
    " F2 = NERD Tree
    map <F2> :NERDTreeToggle<CR>
    map <C-F2> :NERDTreeMirror<CR>
    map <S-F2> :NERDTreeFind<CR>

    " F3 is used by SelectBuf by default

    map <F4> :lcd %:h<cr>
    map <S-F4> :cd %:h<cr>

    " F5, F6 = Fugitive plugin for Git
    map <F5> :Gwrite<CR>
    map <S-F5> :Gcommit<CR>
    map <C-F5> :Gpush origin master<CR>
    map <F6> :Gstatus<CR>
    map <S-F6> :Gblame<CR>
    map <C-F6> :Gpull<CR>

    " make C-N and C-P move to the next and previous 'error'
    map <C-N> :cn<cr>
    map <C-P> :cp<cr>

    " Toggle the TagList buffer
    nmap <F7> :TagbarOpenAutoClose<CR>
    map <C-F7> :TagbarToggle<CR>

    
    " NVIM built in terminal
    nmap <F8> :sp term://zsh<CR>
    nmap <C-F8> :e term://zsh<CR> 
    nmap <S-F8> :vs term://zsh<CR>

    " couchapp
    nmap <F9> :!couchapp push<CR>
    nmap <C-F9> :sp term://ipython<CR>

endif
