
ack-install: homebrew-install
	@test -e /usr/local/bin/ack || brew install ack

include homebrew/install.mk
