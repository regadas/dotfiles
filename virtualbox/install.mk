all: virtualbox

virtualbox: cask
	@test -e /usr/local/bin/VBoxManage || brew cask install virtualbox

.PHONY: all virtualbox

include cask/install.mk
