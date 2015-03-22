all: iterm2

iterm2: cask
	@test -e $(HOME)/Applications/iTerm.app || brew cask install iterm2

.PHONY: all iterm2

include cask/install.mk

