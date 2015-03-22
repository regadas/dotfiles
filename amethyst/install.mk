
all: amethyst

amethyst: cask
	@test -e $(HOME)/Applications/Amethyst.app || brew cask install amethyst

.PHONY: all amethyst

include cask/install.mk

