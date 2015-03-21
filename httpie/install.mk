
httpie-install: python-install
	@test -e /usr/local/bin/http || pip install -U httpie

include python/install.mk
