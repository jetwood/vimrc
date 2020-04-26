VUNDLE=~/.vim/bundle/Vundle.vim
VUNDLE_HTTP=https://github.com/VundleVim/Vundle.vim.git
vundle_exist=$(shell if [ -e $(VUNDLE) ]; then echo "exist"; else echo "notexist"; fi;)

GRUVBOX=~/.vim/pack/default/start/gruvbox
GRUVBOX_HTTP=https://github.com/morhetz/gruvbox.git
gruvbox_exist=$(shell if [ -e $(GRUVBOX) ]; then echo "exist"; else echo "noexist"; fi;)

TEMP=~/.vim/template
temp_exist=$(shell if [ -e $(TEMP) ]; then echo "exist"; else echo "noexist"; fi;)

ALL: install
install:
ifeq ($(vundle_exist),exist)
	@echo Warnning: $(VUNDLE) exist!
else
	git clone $(VUNDLE_HTTP) $(VUNDLE)
endif

ifeq ($(gruvbox_exist),exist)
	@echo Warnning: $(GRUVBOX) exist!
else
	git clone $(GRUVBOX_HTTP) $(GRUVBOX)
endif

	cp -rf template ~/.vim/
	cp ./.vimrc ~/
	cp ./.bashrc ~/
uninstall:
	rm -rf $(VUNDLE)
	rm -rf $(GRUVBOX)
.PHONY:ALL install uninstall

