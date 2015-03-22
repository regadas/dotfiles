all: powerline

powerline: python
	@test -e /usr/local/bin/powerline || pip install -U powerline-status

.PHONY: all powerline

include python/install.mk
