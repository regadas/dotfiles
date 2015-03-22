
all: httpie

httpie: python
	@test -e /usr/local/bin/http || pip install -U httpie

.PHONY: all httpie

include python/install.mk
