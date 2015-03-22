SPF13_URL ?= https://j.mp/spf13-vim3

all: vim-install spf13-install

vim-install: homebrew-install
	@test -e /usr/local/bin/vim || brew install vim

spf13-install: vim-install git-install
	@curl -L $(SPF13_URL) | sh -

include git/install.mk
