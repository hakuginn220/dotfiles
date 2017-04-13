SHELLFILES  := $(wildcard etc/**/*.sh)

.DEFAULT_GOAL := install

update:
	git pull origin master

install:
	$(foreach val, $(SHELLFILES), bash $(abspath $(val));)
