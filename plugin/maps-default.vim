silent echom "Loading Custom Plugin Maps"
noremap <Leader>n :NERDTreeToggle<CR>
noremap <Leader>nm :NERDTreeMirror<CR>
noremap <Leader>nf :NERDTreeFind<CR>

noremap <Leader>b :SelectBuf<CR>

noremap <Leader>l :lcd %:h<cr>
noremap <Leader>lc :cd %:h<cr>

" <Leader>g = Fugitive plugin for Git
noremap <Leader>gw :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gp :Gpush origin master<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gf :Gpull<CR>
noremap <Leader>gd :Gdiff<CR>

" make C-N and C-P move to the next and previous 'error'
noremap <C-N> :cn<cr>
noremap <C-P> :cp<cr>

" Toggle the TagList buffer
nnoremap <Leader>vt :TagbarToggle<CR>
nnoremap <Leader>vc :TagbarOpenAutoClose<CR>

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

" Elm Stuff
"
let g:elm_setup_keybindings = 0
map <Leader>er :ElmRepl<CR>
map <Leader>em :ElmMake<CR>
map <Leader>eb :ElmMakeMain<CR>
map <Leader>et :ElmTest<CR>
map <Leader>ee :ElmErrorDetail<CR>
map <Leader>ed :ElmShowDocs<CR>
map <Leader>ew :ElmBrowseDocs<CR>
map <Leader>ef :ElmFormat<CR>

inoremap <C-R>+ <esc>:set paste<CR>a<C-R>+<esc>:set nopaste<CR>a

map <Leader>fj :%!python3 -m json.tool<CR>
