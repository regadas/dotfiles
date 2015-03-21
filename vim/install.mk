vim-install: homebrew-install
	@test -e /usr/local/bin/vim || brew install vim

include homebrew/install.mk
