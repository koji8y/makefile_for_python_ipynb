include env.mk
include mk/prepare.mk
include local.mk

%:
	@$(MAKE) -f mk/util.mk $@
