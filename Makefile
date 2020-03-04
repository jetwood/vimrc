FILE=~/.vim/bundle/Vundle.vim
HTTP=https://github.com/VundleVim/Vundle.vim.git
exist = $(shell if [ -e $(FILE) ]; then echo "exist"; else echo "notexist"; fi;)
ALL: install
install:
ifeq ($(exist),exist)
	@echo Warnnig: $(FILE) exist!
else
	git clone $(HTTP) $(FILE)
endif
	cp ./.vimrc ~/
uninstall:
	rm -rf $(FILE)
.PHONY:ALL install uninstall
