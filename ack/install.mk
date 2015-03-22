
all: ack

ack: homebrew
	@test -e /usr/local/bin/ack || brew install ack

.PHONY: all ack

include homebrew/install.mk
