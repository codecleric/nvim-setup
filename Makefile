SHELL:=/usr/bin/bash
# Yup, you can set different shells
NVIM_PATH=${HOME}/.config/nvim
VIM_PATH=${HOME}/.config/nvim
ENVSUPPORT_PATH=${HOME}/.config/nvim/envsupport

SAMPLE_ENV_VAR_WITH_DEFAULT ?= a-default-value

.ONESHELL:
.SILENT:

readme: ensure_cowsay ## Show the project README.md file
	if [ -f ./README.md ] ; then
		cat README.md
	else
		cowsay "Um, you don't have a README.md file"
		while true; do
			read -p "Would you like to make one? [Y/N]: " answer
			case $$answer in
				[Yy]* )
					read -p "Enter the title: " the_title
					echo "# $$the_title" >> README.md
					echo "" >> README.md
					read -p "Enter a short description: " the_desc
					echo "$$the_desc" >> README.md
					echo "" >> README.md
					echo "## Usage Section" >> README.md
					echo "... all done!"
					break
					;;
				[Nn]* )
					clear
					cowsay -f ./.brian.cow "WHY DON'T YOU WANT A README????"
					break
					;;
				* ) 
					echo "Please answer Y or N." 
					;;
			esac
		done
	fi

full-monte: ensure_packages ensure_croc ensure_zsh_setup ensure_vimplug install_rc_files install_hack_font ## Install everything

ensure_packages: ## Install the utilities I like to have around
	. /etc/os-release
	echo "Installing various packages to support this config... you will be asked to sudo"
	if test "$$ID_LIKE" = 'debian'; then
		echo "[====] ... now installing tools for $$ID_LIKE like system"
		sudo apt-get install -y zsh git fortune tmux at sox libsox-fmt-all pipx curl universal-ctags exa vim-gtk3 figlet ripgrep scrot direnv gufw
	elif test "$$ID_LIKE" = 'centos'; then
		echo "[====] ... now installing tools for $$ID_LIKE like system "
		sudo yum install -y zsh git tmux at pipx curl ctags direnv
	elif test "$$ID" = 'nixos'; then
		echo "[====] ... now installing tools on $$ID_LIKE "
	    nix-env -iA nixos.fortune nixos.at nixos.sox nixos.python310Packages.pipx nixos.curl nixos.universal-ctags
	fi

ensure_zsh_setup: install_asdf_tool ## Install oh-my-zsh and zgen
	# Fetch oh-my-zsh
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	# Fetch zgen for zsh package management
	git clone https://github.com/tarjoilija/zgen.git ${HOME}/.zgen

ensure_flatpak: ## Install flatpak package manager
	. /etc/os-release
	if test "$$ID_LIKE" = 'debian'; then
		echo "[====] ... now installing flatpak for $$ID_LIKE like system"
		sudo apt-get install -y flatpak
		flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
		echo "[====] ... recommend reboot for XDG_DATA_DIRS path"
	elif test "$$ID" = 'rocky'; then
		echo "[====] ... now installing flatpak for $$ID linux"
		sudo dnf install flatpak
		flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
		echo "[====] ... recommend reboot for XDG_DATA_DIRS path"
	elif test "$$ID_LIKE" = 'centos'; then
		echo "[====] ... already on system"
	fi

ensure_vimplug: ## Install vim-plug
	curl -fLo $(VIM_PATH)/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ensure_croc: ## Get the croc file transfer utility
	figlet "Get croc"
	curl https://getcroc.schollz.com | bash

install_flatpak_apps: ## Various desktop apps I like to have from flatpaks
	figlet "flatpak: digiKam"
	flatpak install -y org.kde.digikam
	figlet "flatpak: Telegram"
	flatpak install -y org.telegram.desktop 
	figlet "flatpak: XMPP clients"
	flatpak install -y im.kaidan.kaidan org.gajim.Gajim im.dino.Dino
	figlet "flatpak: Mind Mapping"
	flatpak install -y net.xmind.XMind com.github.phase1geo.minder
	figlet "flatpak: GIMP"
	flatpak install -y org.gimp.GIMP
	figlet "flatpak: Reco audio recorder"
	flatpak install -y com.github.ryonakano.reco
	figlet "flatpak: Scans to PDF"
	flatpak install -y com.github.unrud.djpdf
	figlet "flatpak: Handbrake"
	flatpak install -y fr.handbrake.ghb
	figlet "flatpak: Okular"
	flatpak install -y org.kde.okular

install_greenclip_clipboard: ## Install the greenclip clipboard manager
	mkdir -p ~/.local/bin && cd ~/.local/bin
	wget https://github.com/erebe/greenclip/releases/download/v4.2/greenclip
	chmod +x greenclip
	cd ~/.config
	cp ./nvim/envsupport/regolith/greenclip.toml .


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
		ln -fs $(ENVSUPPORT_PATH)/../vimrc.vim .vimrc
		mkdir -p ~/.vim
		ln -fs $(VIM_PATH)/bundle ~/.vim/plugged
		ln -fs $(VIM_PATH)/plugin ~/.vim/plugin
		ln -fs $(VIM_PATH)/autoload ~/.vim/autoload
		echo '# add local shell changes here' >>  ~/.zsh.local
		echo '" Add local vim settings here ' >> ~/.nvimlocal.vim
	fi
install_asdf_tool: ## Install the asdf tool versions manager
	figlet "git: asdf"
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1

#install_lua_lang: extra_cows ## Install the Lua programming language, luarocks package manager and JIT
install_lua_lang: ## Install the Lua programming language, luarocks package manager and JIT
	figlet "Lua"
	luaversion=5.4.6
	cowsay -f megaman "Installing Lua $$luaversion"
	mkdir /tmp/lua
	cd /tmp/lua
	curl -R -O http://www.lua.org/ftp/lua-$$luaversion.tar.gz
	tar xvf lua-$$luaversion.tar.gz
	cd lua-$$luaversion
	make linux test
	sudo make install
	rocksversion=3.9.2
	cowsay -f megaman "Installing LuaRocks $$rocksversion"
	cd ..
	curl -R -O http://luarocks.github.io/luarocks/releases/luarocks-$$rocksversion.tar.gz
	tar xzf luarocks-$$rocksversion.tar.gz
	cd luarocks-$$rocksversion
	./configure --with-lua-include=/usr/local/include
	make
	sudo make install

install_nerd_fonts: ## Install the Nerd Fonts repo
	echo "Downloading repo"
	cd /tmp
	git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
	cd nerd-fonts
	chmod +x ./install.sh
	./install.sh 

install_entr: ## entr - File watcher and command runner
	figlet "Building entr"
	mkdir -p /tmp/entr_src
	cd /tmp/entr_src
	git clone https://github.com/eradman/entr.git
	cd entr
	./configure
	make test
	sudo make install


archive-repo: ## Make a tar/gzip archive of the repo with the date
	mydir=`pwd`
	@cd ..
	@tar cvzf nvim-setup-`date +%Y-%m-%dT%H%M`.tgz $$mydir

ensure_cowsay: # install the cowsay tool (single hash keeps me out of the menu)
	. /etc/os-release
	if ! command -v cowsay &> /dev/null
	then
		echo "[====] ... now installing cowsay $$ID_LIKE "
		if test "$$ID_LIKE" = 'debian'; then
			echo "[====] debian like system - requesting SUDO password"
			sudo apt-get install -y fortune cowsay
		elif test "$$ID_LIKE" = 'centos'; then
			echo "[====] centos like system - requesting SUDO password"
			sudo yum install -y fortune cowsay
		elif test "$$ID" = 'nixos'; then
			echo "[====] nixos"
			nix-env -iA nixos.cowsay
		fi
	fi

extra_cows: ## Install additional cows for cowsay
	echo "[====] ... now installing extra cowsay cows, with sudo "
	echo "[====] ... examples here: https://github.com/paulkaefer/cowsay-files/blob/main/examples.md"
	git clone https://github.com/paulkaefer/cowsay-files.git ~/.cows
	cd ~/.cows
	sudo make install
	echo "[====] ... updating COWPATH env var in ~/.zsh.local"
	echo "export COWPATH=/usr/local/share/cowsay-files/cows:/usr/share/cowsay/cows" > ~/.zsh.local

.PHONY: help
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
