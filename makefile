here := $(shell pwd)

help:
	@echo "Choose a platform (arch/windows)"
arch:
	ln -fsn $(here)/vimrc $(HOME)/.vimrc
	mkdir -p $(HOME)/.vim/colors
	ln -fsn $(here)/newtheme.vim $(HOME)/.vim/colors/newtheme.vim
	ln -fsn $(here)/Vundle.vim $(HOME)/.vim/bundle/Vundle.vim
	# Snippets
	ln -fsn $(here)/snippets $(HOME)/.vim/snippets
windows:
	copy newtheme.vim "D:/Program\ Files\ \(x86\)/vim/vimfiles/colors/newtheme.vim"

.PHONY: help arch windows
