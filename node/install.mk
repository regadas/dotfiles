all: node

node: homebrew
	@test -e /usr/local/bin/node || brew install node

.PHONY: all node

include homebrew/install.mk
