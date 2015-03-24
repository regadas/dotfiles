SPF13_URL ?= https://j.mp/spf13-vim3

all: vim-symlinks vim spf13

vim: homebrew
	@test -e /usr/local/bin/vim || brew install vim

vim-symlinks: symlinks

spf13: vim git
	@curl -L $(SPF13_URL) | sh -

.PHONY: all vim spf13 vim-symlinks

include base.mk
include git/install.mk
