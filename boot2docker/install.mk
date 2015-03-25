all: boot2docker

boot2docker: virtualbox
	@test -e /usr/local/bin/boot2docker || brew install boot2docker

.PHONY: all boot2docker

include virtualbox/install.mk
