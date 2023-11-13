silent echom "Loading Custom Plugin Maps"
noremap <Leader>n :NERDTreeToggle<CR>
noremap <Leader>nm :NERDTreeMirror<CR>
noremap <Leader>nf :NERDTreeFind<CR>

noremap <Leader>b :SelectBuf<CR>

noremap <Leader>l :lcd %:h<cr>
noremap <Leader>lc :cd %:h<cr>

" <Leader>g = Fugitive plugin for Git
noremap <Leader>gw :Gwrite<CR>
noremap <Leader>gc :Git commit<CR>
noremap <Leader>gp :Git push<CR>
noremap <Leader>gs :Git status<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gf :Gpull<CR>
noremap <Leader>gd :Gdiff<CR>
"
" <Leader>f = Fossil plugin for ... well, Fossil
noremap <Leader>fw :Fadd<CR>
noremap <Leader>fc :Fcommit -m 
noremap <Leader>fs :Fstatus<CR>
noremap <Leader>fh :Fchanges<CR>
noremap <Leader>fo :Fopen 
noremap <Leader>ft :Ftimeline<CR>
noremap <Leader>fd :Fvdiff<CR>

" make C-N and C-P move to the next and previous 'error'
noremap <C-N> :cn<cr>
noremap <C-P> :cp<cr>

" Toggle the TagList buffer
nnoremap <Leader>vt :TagbarToggle<CR>
nnoremap <Leader>vc :TagbarOpenAutoClose<CR>
nnoremap <Leader>vd :TagbarDebug tagbar.log<CR>
nnoremap <Leader>vo :TagbarDebugEnd<CR>
nnoremap <Leader>vf :TagbarForceUpdate<CR>

" NVIM built in terminal
if has("nvim")
    nnoremap <Leader>ts :sp term://zsh<CR>
    nnoremap <Leader>te :e term://zsh<CR> 
    nnoremap <Leader>tv :vs term://zsh<CR>
    nnoremap <Leader>tp :sp term://ipython<CR>
endif

" tab controls
nnoremap <C-t>n :tabnext<CR>
nnoremap <C-t>p :tabprevious<CR> 
nnoremap <C-t>t :tabnew<CR>

" python stuff
nnoremap <Leader>pc :!couchapp push<CR>

inoremap <C-R>+ <esc>:set paste<CR>a<C-R>+<esc>:set nopaste<CR>a

map <Leader>fj :%!python3 -m json.tool<CR>

" session stuff
"https://dockyard.com/blog/2018/06/01/simple-vim-session-management-part-1
let g:sessions_dir = "~/.vim/sessions"
exec 'nnoremap <Leader>ss :mks! '  . g:sessions_dir. '/*.vim<C-D><BS><BS><BS><BS><BS>'
exec 'nnoremap <Leader>sr :so '  . g:sessions_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
