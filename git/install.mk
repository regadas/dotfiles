git-install: homebrew-install
	@test -e /usr/local/bin/git || brew install git

include homebrew/install.mk
