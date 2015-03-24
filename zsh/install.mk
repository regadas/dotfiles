
PREZTO_HOME := $(HOME)/.zprezto
PREZTO_RCS := $(wildcard $(PREZTO_HOME)/runcoms/z*)

all: zsh prezto

zsh: zsh-install zsh-symlinks

zsh-install: homebrew
	@test -e /usr/local/bin/zsh || brew install zsh

zsh-symlinks: symlinks

prezto: prezto-clone preztorcs

prezto-clone: zsh git
	@test -e $(PREZTO_HOME) || git clone --recursive https://github.com/sorin-ionescu/prezto.git $(PREZTO_HOME)

preztorcs: $(PREZTO_RCS)
$(PREZTO_RCS):
	@-ln -s $@ $(HOME)/.$(notdir $@)

.PHONY: all zsh zsh-install zsh-symlinks prezto prezto-clone preztorcs $(PREZTO_RCS)

include base.mk
include git/install.mk
