include env.mk
include mk/prepare.mk

help: help_core
	@true

%:
	@$(MAKE) -f mk/util.mk $@
