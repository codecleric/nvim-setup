" MacVim GUI mode, from https://c7.se/switching-to-vundle/
if has("gui_macvim")
  "set gfn=Andale\ Mono:h12
  set antialias
  set guifont=Monaco:h13
  set guioptions=aAce
  set fuoptions=maxvert,maxhorz
  set noballooneval

  " Automatically resize splits
  " when resizing MacVim window
  autocmd VimResized * wincmd =
endif
