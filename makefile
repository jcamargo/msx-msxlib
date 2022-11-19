
# commands and tools
include config.makefile

# default target
default: compile

#
# paths and file lists
#
ROM=\
	games\examples\00minimal\minimal.rom \


SYM=\
	games\examples\00minimal\minimal.sym \


SHARED_DATAS=\
	games\examples\shared\charset.pcx.chr.$(PACK_EXTENSION) \
	games\examples\shared\charset.pcx.clr.$(PACK_EXTENSION) \
	games\examples\shared\sprites.pcx.spr.$(PACK_EXTENSION) \
	games\examples\shared\screen.tmx.bin.$(PACK_EXTENSION)

SHARED_DATAS_INTERMEDIATE=\
	games\examples\shared\charset.pcx.chr \
	games\examples\shared\charset.pcx.clr \
	games\examples\shared\sprites.pcx.spr \
	games\examples\shared\screen.tmx.bin

#
# targets
#
games\examples\00minimal\minimal.rom: games\examples\00minimal\minimal.asm $(SRCS_MSXLIB) $(SRCS_LIBEXT)
	$(ASM) $(ASM_FLAGS) $< $@

# default targets
include msxlib.makefile