here := $(shell pwd)

help:
	@echo "Choose a platform (arch/windows)"
arch:
	ln -fsn $(here)/vimrc $(HOME)/.vimrc
windows:
	@echo TBD

.PHONY: help arch windows
