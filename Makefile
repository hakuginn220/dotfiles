EXCLUSIONS  := .DS_Store .git .config .editorconfig .gitignore
DOTFILES    := $(filter-out $(EXCLUSIONS), $(wildcard .??*))
SHELLFILES  := $(wildcard etc/**/*.sh)

.DEFAULT_GOAL := setup

update:
	@git pull origin master

deploy:
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

init:
	@$(foreach val, $(SHELLFILES), bash $(abspath $(val));)

setup: update deploy init
	@$$SHELL
