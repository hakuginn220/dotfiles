SHELLFILES  := $(wildcard etc/**/*.sh)

.DEFAULT_GOAL := install

install:
	$(foreach val, $(SHELLFILES), sh $(abspath $(val));)
