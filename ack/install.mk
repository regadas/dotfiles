
all: ack

ack: ack-install ack-symlinks

ack-install: homebrew
	@test -e /usr/local/bin/ack || brew install ack

ack-symlinks: symlinks

.PHONY: all ack ack-install ack-symlinks

include base.mk
include homebrew/install.mk
