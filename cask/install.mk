
all: cask

cask: homebrew
	@brew install caskroom/cask/brew-cask

.PHONY: all cask

include homebrew/install.mk

