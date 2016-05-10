let termvar = $TERM_PROGRAM
if termvar == "iTerm.app"
    echom "Loading ITERM Function Key Maps"

    " iTerm function key mappings
    " <C-F1> ❊
    " <C-F2> ❆
    " <S-F2> ✻
    " <C-F3> ❊
    " <S-F3> ✼
    " <C-F4> ✳︎
    " <S-F4> ❉ 
    " <C-F5> ✴︎
    " <S-F5> ✱
    " <C-F6> ❇︎
    " <S-F6> ✲
    " <C-F7> ❈
    " <S-F7> ✾
    " <C-F8> ※
    " <S-F8> ❃
    " <C-F9> ❅
    " <S-F9> ❋

    " F2 = NERD Tree
    map <F2> :NERDTreeToggle<CR>
    " <C-F2> ❆
    map ❆ :NERDTreeMirror<CR>
    " <S-F2> ✻
    map ✻ :NERDTreeFind<CR>

    " F3 is used by SelectBuf by default

    map <F4> :lcd %:h<cr>
    " <S-F4> ❉ 
    map ❉ :cd %:h<cr>

    " F5, F6 = Fugitive plugin for Git
    map <F5> :Gwrite<CR>
    " <S-F5> ✱
    map ✱ :Gcommit<CR>
    " <C-F5> ✴︎
    map ✴︎ :Gpush origin master<CR>
    map <F6> :Gstatus<CR>
    " <S-F6> ✲
    map ✲ :Gblame<CR>
    " <C-F6> ❇︎
    map ❇︎ :Gpull<CR>

    " make C-N and C-P move to the next and previous 'error'
    map <C-N> :cn<cr>
    map <C-P> :cp<cr>

    " Toggle the TagList buffer
    nmap <F7> :TagbarOpenAutoClose<CR>
    " <C-F7> ❈
    map ❈ :TagbarToggle<CR>
    
    " NVIM built in terminal
    nmap <F8> :sp term://zsh<CR>
    " <C-F8> ※
    nmap ※ :e term://zsh<CR> 
    " <S-F8> ❃
    nmap ❃ :vs term://zsh<CR>

    " couchapp
    nmap <F9> :!couchapp push<CR>
    " <C-F9> ❅
    nmap ❅ :sp term://ipython<CR>

    "
endif

