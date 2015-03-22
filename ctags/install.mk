
all: ctags

ctags: homebrew
	@test -e /usr/local/bin/ctags || brew install ctags

.PHONY: all ctags

include homebrew/install.mk
