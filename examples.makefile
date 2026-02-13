
# commands and tools
include config.makefile

# packer; must match the included unpacker routine
PACK_EXTENSION=zx0

# default target
default: compile

#
# paths and file lists
#
ROOT=games\examples
PROJNAME=stand_alone

ROM=	$(ROOT)\00minimal\minimal.rom 
	

SYM=	$(ROOT)\00minimal\minimal.sym 
	

SHARED_DATAS=\
	$(ROOT)\shared\charset.pcx.chr.$(PACK_EXTENSION) \
	$(ROOT)\shared\charset.pcx.clr.$(PACK_EXTENSION) \
	$(ROOT)\shared\sprites.pcx.spr.$(PACK_EXTENSION) \
	$(ROOT)\shared\screen.tmx.bin.$(PACK_EXTENSION)

SHARED_DATAS_INTERMEDIATE=\
	$(ROOT)\shared\charset.pcx.chr \
	$(ROOT)\shared\charset.pcx.clr \
	$(ROOT)\shared\sprites.pcx.spr \
	$(ROOT)\shared\screen.tmx.bin

#
# targets
#

$(ROOT)\00minimal\minimal.rom $(ROOT)\00minimal\minimal.sym: $(ROOT)\00minimal\minimal.asm $(SRCS_MSXLIB) $(SRCS_LIBEXT)
	$(ASM) $(ASM_FLAGS) $(subst \,/,$<) 

# default targets
include msxlib.makefile
