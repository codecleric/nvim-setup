" Allow writing root only files when you forget
cmap w!! w !sudo tee % >/dev/null

" make t do an inline replace of the next movement command
map t gP"_d
map S "_diw""P

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

" most helpful shifting macros
vnoremap > >gv
vnoremap < <gv

cmap <C-SPACE> <C-P>
imap <C-SPACE> <C-P>

"behave mswin
vmap <TAB> :><cr>gv
vmap <S-TAB> :<<cr>gv

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q> <C-V>
cnoremap <C-Q> <C-O><C-V>
inoremap <C-Q> <C-O><C-V>

" Window motions mapped to Alt-<movement key> and work with terminal
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

" Use command key with movement keys to navigate wrapped text in
" a more normal fashion instead of use the 'g' prefix all the time
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^

