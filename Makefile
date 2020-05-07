VUNDLE=~/.vim/bundle/Vundle.vim
VUNDLE_HTTP=https://github.com/VundleVim/Vundle.vim.git
vundle_exist=$(shell if [ -e $(VUNDLE) ]; then echo "exist"; else echo "notexist"; fi;)

GRUVBOX=~/.vim/pack/default/start/gruvbox
GRUVBOX_HTTP=https://github.com/morhetz/gruvbox.git
gruvbox_exist=$(shell if [ -e $(GRUVBOX) ]; then echo "exist"; else echo "noexist"; fi;)

CPPHIGHLIGHT=~/.vim/after/syntax/
CPPHLT_HTTP=https://github.com/octol/vim-cpp-enhanced-highlight.git
cpphlt_exist=$(shell if [ -e $(CPPHIGHLIGHT) ]; then echo "exist"; else echo "noexist"; fi;)

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

ifeq ($(cpphlt_exist),exist)
	@echo Warnning: $(CPPHIGHLIGHT) exist!
else
	git clone $(CPPHLT_HTTP) /tmp/vim-cpp-enhanced-highlight
	mkdir -p ~/.vim/after/syntax/
	mv /tmp/vim-cpp-enhanced-highlight/after/syntax/cpp.vim ~/.vim/after/syntax/cpp.vim
	rm -rf /tmp/vim-cpp-enhanced-highlight
endif
	cp -rf template ~/.vim/
	cp ./.vimrc ~/
	cp ./.bashrc ~/
uninstall:
	rm -rf $(VUNDLE)
	rm -rf $(GRUVBOX)
	rm -rf $(CPPHIGHLIGHT)
.PHONY:ALL install uninstall

