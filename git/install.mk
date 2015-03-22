all: git

git: homebrew
	@test -e /usr/local/bin/git || brew install git

.PHONY: all git

include homebrew/install.mk
