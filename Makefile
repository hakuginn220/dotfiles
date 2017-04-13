SHELLFILES  := $(wildcard etc/**/*.sh)

.DEFAULT_GOAL := install

install:
	$(foreach val, $(SHELLFILES), bash $(abspath $(val));)
