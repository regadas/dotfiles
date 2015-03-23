
all: menumeters

menumeters: cask
	@test -e $(HOME)/Library/PreferencePanes/MenuMeters.prefPane || brew cask install menumeters

.PHONY: all menumeters

include cask/install.mk
