HOMEBREW_URL ?= https://raw.githubusercontent.com/Homebrew/install/master/install

all: homebrew

homebrew:
	@test -e /usr/local/bin/brew || ruby -e "$$(curl -fsSL ${HOMEBREW_URL})"

.PHONY: all homebrew
