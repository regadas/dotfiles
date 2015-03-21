SUBDIRS := $(wildcard **/*.mk)

all: $(SUBDIRS)
$(SUBDIRS):
	@echo $@
	@$(MAKE) -f $@

.PHONY: all $(SUBDIRS)
