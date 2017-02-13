DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*)
EXCLUSIONS := .DS_Store .git .gitignore .editorconfig
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

.DEFAULT_GOAL := init

update:
	@echo ""
	@echo "====> update"
	@echo ""
	@git pull origin master

deploy:
	@echo ""
	@echo "====> deploy"
	@echo ""
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

install:
	@echo ""
	@echo "====> install"
	@echo ""
	@bash $(DOTPATH)/install.sh

init: update deploy install
	@exec $$SHELL
