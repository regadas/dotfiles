MK_DIR = $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

SYMLINKS = $(filter-out %install.mk, $(wildcard $(MK_DIR)/*))

symlinks: $(SYMLINKS)
$(SYMLINKS):
	@ln -sf $@ $(HOME)/.$(notdir $@)

.PHONY: symlinks $(SYMLINKS) $(MK_DIR)
