# Yup, you can set different shells
SHELL=/run/current-system/sw/bin/bash
NVIM_PATH=${HOME}/.config/nvim
VIM_PATH=${HOME}/.config/nvim
ENVSUPPORT_PATH=${HOME}/.config/nvim/envsupport

SAMPLE_ENV_VAR_WITH_DEFAULT ?= a-default-value

.ONESHELL:
.SILENT: readme
readme: ensure_cowsay ## Show the project README.md file
	@if [ -f ./README.md ] ; then
		@cat README.md
	@else
		@cowsay "Um, you don't have a README.md file"
		@while true; do
			@read -p "Would you like to make one? [Y/N]: " answer
			@case $$answer in
				[Yy]* )
					@read -p "Enter the title: " the_title
					@echo "# $$the_title" >> README.md
					@echo "" >> README.md
					@read -p "Enter a short description: " the_desc
					@echo "$$the_desc" >> README.md
					@echo "" >> README.md
					@echo "## Usage Section" >> README.md
					@echo "... all done!"
					break
					;;
				[Nn]* )
					@clear
					@cowsay -f ./.brian.cow "WHY DON'T YOU WANT A README????"
					@break
					;;
				* ) 
					@echo "Please answer Y or N." 
					;;
			@esac
		@done
	@fi

full-monte: ensure_packages ensure_zsh_setup ensure_vimplug install_rc_files install_hack_font ## Install everything

.SILENT: ensure_packages
ensure_packages: ## Install the utilities I like to have around
	source /etc/os-release
	echo "Installing various packages to support this config... you will be asked to sudo"
	if test "$(ID_LIKE)" = 'debian'; then
		sudo apt-get install -y zsh git fortune tmux at sox libsox-fmt-all pipx curl universal-ctags exa
	elif test "$(ID_LIKE)" = 'centos'; then
		sudo yum install -y zsh git tmux at pipx curl ctags
	elif test "$ID" = 'nixos'; then
	    nix-env -iA nixos.fortune nixos.at nixos.sox nixos.python310Packages.pipx nixos.curl nixos.universal-ctags
	fi

.SILENT: ensure_zsh_setup
ensure_zsh_setup: ## Install oh-my-zsh and zgen
	# Fetch oh-my-zsh
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	# Fetch zgen for zsh package management
	git clone https://github.com/tarjoilija/zgen.git ${HOME}/.zgen


.SILENT: ensure_vim_plug
ensure_vimplug: ## Install vim-plug
	curl -fLo $(VIM_PATH)/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

.SILENT: install_rc_files
install_rc_files: ## Set up support files and links
	# Install supporting RC files
	if [[ -n $(ENVSUPPORT_PATH) ]]; then
		echo "Installing symlinks from '$(HOME)' to '$(ENVSUPPORT_PATH)'"
		cd $(HOME)
		ln -fs $(ENVSUPPORT_PATH)/zsh/dot.zshrc .zshrc
		ln -fs $(ENVSUPPORT_PATH)/tmux/dot.tmux.conf .tmux.conf
		# USED for non-public keys #ln -fs $SUPPORT_PATH/zshenv .zshenv
		ln -fs $(ENVSUPPORT_PATH)/git/dot.gitconfig .gitconfig
		ln -fs $(ENVSUPPORT_PATH)/git/dot.gitignore_shared .gitignore_shared
		ln -fs $(ENVSUPPORT_PATH)/dot.npmrc .npmrc
		ln -fs $(ENVSUPPORT_PATH)/../init.vim .vimrc
		mkdir -p ~/.vim
		ln -fs $(VIM_PATH)/bundle ~/.vim/plugged
		ln -fs $(VIM_PATH)/plugin ~/.vim/plugin
		ln -fs $(VIM_PATH)/autoload ~/.vim/autoload
		echo '# add local shell changes here' >>  ~/.zsh.local
		echo '" Add local vim settings here ' >> ~/.nvimlocal.vim
	fi

.SILENT: install_hack_font
install_hack_font: ## Install the Nerd Hack font
	mkdir -p $(HOME)/.local/share/fonts $(HOME)/.config/fontconfig/conf.d
	cp $(ENVSUPPORT_PATH)/fonts/ttf/* $(HOME)/.local/share/fonts/
	cp $(ENVSUPPORT_PATH)/fonts/45-hack.conf $(HOME)/.config/fontconfig/conf.d
	fc-cache -f -v
	fc-list | grep "Hack"

archive-repo: ## Make a tar/gzip archive of the repo with the date
	mydir=`pwd`
	@cd ..
	@tar cvzf nvim-setup-`date +%Y-%m-%dT%H%M`.tgz $$mydir

.SILENT: ensure_cowsay
ensure_cowsay: # install the cowsay tool (single hash keeps me out of the menu)
	if ! command -v cowsay &> /dev/null
	then
		echo "[====] ... now installing cowsay - requesting SUDO password"
		if test "$(ID_LIKE)" = 'debian'; then
			sudo apt-get install -y fortune cowsay
		elif test "$(ID_LIKE)" = 'centos'; then
			sudo yum install -y fortune cowsay
		elif test "$ID" = 'nixos'; then
			nix-env -iA nixos.cowsay
		fi
	fi


.PHONY: help
.SILENT: help
help: ensure_cowsay
	if [ -f ./README.md ] ; then
		grep "^\#" -m 2 -n README.md | awk 'NR>1 {split($$0,a,":"); print a[1] | "read c; c=$$((c-1)); head -n $$c README.md" }'
		echo "========================================================================"
	else
		cowsay "Add a README.md for a better description"
	fi
	grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


.DEFAULT_GOAL := help
# :vim set ts=4 sw=4 :
