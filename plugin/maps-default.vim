silent echom "Loading Custom Plugin Maps"
map <Leader>n :NERDTreeToggle<CR>
map <Leader>nm :NERDTreeMirror<CR>
map <Leader>nf :NERDTreeFind<CR>

map <Leader>b :SelectBuf<CR>

map <Leader>l :lcd %:h<cr>
map <Leader>lc :cd %:h<cr>

" <Leader>g = Fugitive plugin for Git
map <Leader>gw :Gwrite<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gp :Gpush origin master<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gb :Gblame<CR>
map <Leader>gf :Gpull<CR>
map <Leader>gd :Gdiff<CR>

" make C-N and C-P move to the next and previous 'error'
map <C-N> :cn<cr>
map <C-P> :cp<cr>

" Toggle the TagList buffer
nmap <Leader>vt :TagbarToggle<CR>
nmap <Leader>vc :TagbarOpenAutoClose<CR>

" NVIM built in terminal
if has("nvim")
    nmap <Leader>ts :sp term://zsh<CR>
    nmap <Leader>te :e term://zsh<CR> 
    nmap <Leader>tv :vs term://zsh<CR>
    nmap <Leader>tp :sp term://ipython<CR>
endif

" tab controls
nmap <C-t>n :tabnext<CR>
nmap <C-t>p :tabprevious<CR> 
nmap <C-t>t :tabnew<CR>

" python stuff
nmap <Leader>pc :!couchapp push<CR>

" Elm Stuff
"
let g:elm_setup_keybindings = 0
map <Leader>er :ElmRepl<CR>
map <Leader>em :ElmMakeCurrentFile<CR>
map <Leader>eb :ElmMakeMain<CR>
map <Leader>et :ElmTest<CR>
map <Leader>ee :ElmErrorDetail<CR>
map <Leader>ed :ElmShowDocs<CR>
map <Leader>ew :ElmBrowseDocs<CR>
map <Leader>ef :ElmFormat<CR>
