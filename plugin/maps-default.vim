echo "Loading Custom Plugin Maps"
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
nmap <Leader>ts :sp term://zsh<CR>
nmap <Leader>te :e term://zsh<CR> 
nmap <Leader>tv :vs term://zsh<CR>

" python stuff
nmap <Leader>pp :sp term://ipython<CR>
nmap <Leader>pc :!couchapp push<CR>

