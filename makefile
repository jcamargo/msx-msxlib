# commands and tools
# include examples.makefile
include config.makefile

# default target
# default: compile
ROOT=games\examples
PROJNAME=minimal
PROJIDR=00minimal
# PROJNAME=stand_alone
# PROJIDR=stand_alone
SRC= $(ROOT)\$(PROJIDR)\$(PROJNAME).asm
ROM= $(ROOT)\$(PROJIDR)\$(PROJNAME).rom
SYM= $(ROOT)\$(PROJIDR)\$(PROJNAME).sym
LST= $(ROOT)\$(PROJIDR)\$(PROJNAME).lst
SLD= $(ROOT)\$(PROJIDR)\$(PROJNAME).sld

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


# default targets
# include msxlib.makefile

# targets
$(ROM): $(SRC) $(SRCS_MSXLIB) $(SRCS_LIBEXT)
	@echo $(CURDIR)
	@echo "target: $@"
	$(ASM) $(ASM_FLAGS) $(subst \,/,$<) $(SRCS_MSXLIB)  

# phony targets
compile: $(ROM)
	@echo "target: $@"

clean:
	@echo "target: $@"
	$(REMOVE) $(ROM) 
	$(REMOVE) $(SYM) 
	$(REMOVE) $(LST) 
	$(REMOVE) $(SLD)

test: $(ROM)
	@echo "target: $@"
	@echo "args: $(ROM)"	
	$(EMULATOR) $<
	
# run: runnable
# #	$(EMULATOR) games\examples\04flash\flash.rom
# #	$(EMULATOR) games\examples\pt3music\pt3music.rom
# #	$(EMULATOR) games\examples\wyzmusic\wyzmusic.rom
