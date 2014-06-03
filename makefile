here := $(shell pwd)

help:
	@echo "Choose a platform (arch/windows)"
arch:
	ln -fsn $(here)/vimrc $(HOME)/.vimrc
	ln -fsn $(here)/Vundle.vim $(HOME)/.vim/bundle/Vundle.vim
windows:
	@echo TBD

.PHONY: help arch windows
