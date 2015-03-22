
all: python

python: homebrew
	@test -s $(which /usr/local/bin/python) || brew install python
	@test -s $(which /usr/local/bin/python3) || brew install python3

.PHONY: all python

include homebrew/install.mk
