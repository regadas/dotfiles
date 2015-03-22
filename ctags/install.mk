
ctags-install: homebrew-install
	@test -e /usr/local/bin/ctags || brew install ctags

include homebrew/install.mk
