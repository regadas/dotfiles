SPF13_URL ?= https://j.mp/spf13-vim3
VIMRCS := $(wildcard */vimrc*)

all: vimrc vim spf13

vim: homebrew
	@test -e /usr/local/bin/vim || brew install vim

spf13: vim git
	@curl -L $(SPF13_URL) | sh -

vimrc: $(VIMRCS)
$(VIMRCS):
	@ln -sf $(PWD)/$@ $(HOME)/.$(notdir $@)

.PHONY: all vim spf13 $(VIMRCS)

include git/install.mk
