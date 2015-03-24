
all: ack

ack: ack-install ack-symlink

ack-install: homebrew
	@test -e /usr/local/bin/ack || brew install ack

ack-symlink:
	@ln -sf $(MK_DIR)/ackrc $(HOME)/.ackrc

.PHONY: all ack ack-install ack-symlink

include base.mk
include homebrew/install.mk
