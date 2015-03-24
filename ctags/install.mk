
all: ctags

ctags: ctags-install ctags-symlink

ctags-install: homebrew
	@test -e /usr/local/bin/ctags || brew install ctags

ctags-symlink: symlinks

.PHONY: all ctags ctags-install ctags-symlink

include base.mk
include homebrew/install.mk
