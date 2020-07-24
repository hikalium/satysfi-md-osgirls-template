SRCS = main.md

.FORCE : 

os-girls.pdf : $(SRCS) .FORCE
	cat $(SRCS) > $@.md
	satysfi --config satysfi_config/ --markdown osgirls $@.md -o $@
	open $@
