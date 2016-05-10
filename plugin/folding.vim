" Folding
set foldmethod=indent
set foldcolumn=2
set foldlevel=5
set foldtext=MyFoldText()
:hi Folded guibg=bg guifg=blue  

function MyFoldText()
    "let line = getline(v:foldstart)
    return '. . . . . . . . . . . . . . . . .'
endfunction

