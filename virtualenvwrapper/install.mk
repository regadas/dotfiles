all: virtualenvwrapper

virtualenvwrapper: python
	pip install -U virtualenvwrapper

.PHONY: all virtualenvwrapper

include python/install.mk
