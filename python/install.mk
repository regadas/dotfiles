
python-install: homebrew-install
	@test -s $(which /usr/local/bin/python) || brew install python
	@test -s $(which /usr/local/bin/python3) || brew install python3

include homebrew/install.mk
