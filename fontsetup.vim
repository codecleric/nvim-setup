"
" This lists all the nerd font gui settings and sets based on the os.
" Just uncomment the one you want
" 
" To see what these fonts look like, check out
" https://www.nerdfonts.com/font-downloads and https://www.programmingfonts.org/
"
" We should basically have all of them... check out
" ~/.local/share/fonts/NerdFonts on linux
"
"... last one wins
let g:myfontface = "FiraCode Nerd Font"
let g:myfontface = "FiraMono Nerd Font"
let g:myfontface = "Noto Mono Nerd Font"
let g:myfontface = "Roboto Mono Nerd Font Light Italic"
let g:myfontface = "OpenDyslexicM Nerd Font Bold"
let g:myfontface = "Hack Nerd Font Regular"
let g:myfontface = "Blex Mono Nerd Font Regular"
let g:myfontface = "Roboto Mono Nerd Font SemiBold Italic"
let g:myfontsize = 12
" This next one works better on 14
"let g:myfontface = "Mononoki Nerd Font"
"let g:myfontsize = 14

if has("gui_running")
    colorscheme jellybeans
    if g:os == "Darwin"
        "set guifont=Fira\ Mono:h12
        let &guifont=g:myfontface.'h'.g:myfontsize
    elseif g:os == "Linux"
        "set guifont=Fira\ Mono\ 10
        let &guifont=g:myfontface.' '.g:myfontsize
    elseif g:os == "Windows"
        "set guifont=Fira_Mono:h12:cANSI
        let &guifont=g:myfontface.'h'.g:myfontsize.'cANSI'
    endif
endif

"let g:myfontface = "FiraCode Nerd Font Propo"
"let g:myfontface = "FiraCode Nerd Font Mono"
"let g:myfontface = "FiraCode Nerd Font"
"let g:myfontface = "Hack Nerd Font Mono"
"
"REALLY ODD ONES< BUT COULD BE FUN
"let g:myfontface = "HeavyData Nerd Font"
"let g:myfontface = "ShureTech Mono Nerd Font"
