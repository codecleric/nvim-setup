let mapleader = ","
set nocompatible              " be iMproved, required
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

filetype off                  " required

call dein#begin(expand('~/.config/nvim/dein')) " plugin root path
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimshell.vim')
call dein#add('floobits/floobits-neovim')

" General environment improvement
call dein#add('vim-scripts/genutils')
call dein#add('tpope/vim-sensible')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-fugitive')
call dein#add('nelstrom/vim-visual-star-search')
call dein#add('vim-scripts/Rename')
" Brief EasyGrep help https://github.com/vim-scripts/EasyGrep
"  Keymappings:

			"<Leader>vv  - Grep for the word under the cursor, match all occurences,
									"like |gstar|
			"<Leader>vV  - Grep for the word under the cursor, match whole word, like 
									"|star|
			"<Leader>va  - Like vv, but add to existing list
			"<Leader>vA  - Like vV, but add to existing list
			"<Leader>vr  - Perform a global search search on the word under the cursor
									"and prompt for a pattern with which to replace it.
			"<Leader>vo  - Select the files to search in and set grep options

	" Commands:

			":Grep [arg]
					"Search for the specified arg, like <Leader>vv.  When an ! is added,
					"search like <Leader>vV

			":GrepAdd [arg]
					"Search for the specified arg, add to existing file list, as in
					"<Leader>va.  When an ! is added, search like <Leader>vA

			":Replace [target] [replacement]
					"Perform a global search and replace.  The function searches
					"the same set of files a grep for the desired target and opens a dialog to
					"confirm replacement.
			
			":ReplaceUndo
					"Undoes the last :Replace operation.  Does not stack successive
					"searches; only the last replace may be undone.  This function may not
					"work well when edits are made between a call to Replace and a call to
					"ReplaceUndo.

			":GrepOptions [arg]
					"Open a window to set grep options.
call dein#add('vim-scripts/EasyGrep')

" Need to have exuberant ctags installed for tagbar
call dein#add('majutsushi/tagbar')

" UtiliSnips; https://github.com/SirVer/ultisnips
"   also see https://github.com/panozzaj/conf/blob/master/common/.vim/UltiSnips/javascript.snippets
call dein#add('SirVer/ultisnips')
" call dein#add('honza/vim-snippets' " Snippets are separated from the engine. Add this if you want them)

call dein#add('powerline/powerline')
"call dein#add('ctrlpvim/ctrlp.vim')
"call dein#add('rking/ag.vim' " the silver searcher)
call dein#add('sotte/presenting.vim')
call dein#add('mileszs/ack.vim')
call dein#add('aquach/vim-http-client')
call dein#add('Keithbsmiley/investigate.vim')

" Navigation
call dein#add('scrooloose/nerdtree')
call dein#add('scrooloose/nerdcommenter')
call dein#add('xuyuanp/nerdtree-git-plugin')
"call dein#add('scrooloose/syntastic')
"call dein#add('jistr/vim-nerdtree-tabs')
call dein#add('vim-scripts/SelectBuf')

" Specific stack support
call dein#add('moll/vim-node')
call dein#add('pangloss/vim-javascript')
call dein#add('chrisbra/csv.vim')
call dein#add('hashivim/vim-hashicorp-tools')
call dein#add('b4b4r07/vim-hcl')
call dein#add('kchmck/vim-coffee-script')
call dein#add('IN3D/vim-raml')
call dein#add('ekalinin/Dockerfile.vim')
call dein#add('nicr9/vim-orca')

" Themes
call dein#add('nanotech/jellybeans.vim')
call dein#add('flazz/vim-colorschemes')

call dein#end()

filetype plugin indent on    " required

if dein#check_install()
  call dein#install()
endif

set noswapfile
set nobackup

set expandtab shiftwidth=2 tabstop=2

"set modelines=0
set cursorline
set paste
set nowrap
"set number
set nowritebackup
set hlsearch
