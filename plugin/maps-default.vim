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
nmap <Leader>ts :sp term://zsh<CR>
nmap <Leader>te :e term://zsh<CR> 
nmap <Leader>tv :vs term://zsh<CR>
nmap <Leader>tp :sp term://ipython<CR>

" tab controls
nmap <C-t>n :tabnext<CR>
nmap <C-t>p :tabprevious<CR> 
nmap <C-t>t :tabnew<CR>

" python stuff
nmap <Leader>pc :!couchapp push<CR>

"
" FLoobits
"
nmap <Leader>fj :FlooJoinWorkspace https://floobits.com/<who>/<ws name>
nmap <Leader>fl :FlooLeaveWorkspace<CR>
nmap <Leader>fn :FlooShareDirPublic .
nmap <Leader>fs :FlooSummon<CR>
" Follows the most recent changes
nmap <Leader>ff :FlooToggleFollowMode<CR>

nmap <Leader>ffu :FlooFollowUser<CR>
nmap <Leader>fa :FlooAddBuf 
" Floo browser 
nmap <Leader>fb :FlooOpenInBrowser<CR>
" Floo talk (chat really)
nmap <Leader>ft :FlooSaySomething<CR>
nmap <Leader>fi :FlooInfo<CR>
nmap <Leader>fm :FlooListMessages<CR>
