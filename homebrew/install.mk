HOMEBREW_URL ?= https://raw.githubusercontent.com/Homebrew/install/master/install

homebrew-install:
	@test -e /usr/local/bin/brew || ruby -e "$$(curl -fsSL ${HOMEBREW_URL})"

