
iterm2-install: cask-install
	@test -e $(HOME)/Applications/iTerm.app || brew cask install iterm2

include cask/install.mk

