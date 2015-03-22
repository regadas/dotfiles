
powerline-install: python-install
	@test -e /usr/local/bin/powerline || pip install -U powerline-status

include python/install.mk
