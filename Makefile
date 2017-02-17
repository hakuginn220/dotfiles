EXCLUSIONS  := .DS_Store .git .config .editorconfig .gitignore
DOTFILES    := $(filter-out $(EXCLUSIONS), $(wildcard .??*))
SHELLFILES  := $(wildcard etc/**/*.sh)

.DEFAULT_GOAL := install

update:
	@git pull origin master

deploy:
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

setup:
	@$(foreach val, $(SHELLFILES), bash $(abspath $(val));)

install: update deploy setup
	@$$SHELL
