
amethyst-install: cask-install
	@test -e $(HOME)/Applications/Amethyst.app || brew cask install amethyst

include cask/install.mk

