
all: docker-compose

docker-compose: python
	pip install -U docker-compose

.PHONY: all docker-compose

include python/install.mk
