# commands and tools
include config.makefile

# default target
default: compile

PROJNAME=stand_alone
ROOT=games\examples

# ROOT=${fileDirname}

#
# paths and file lists
#
SRC=\
	$(ROOT)\$(PROJNAME)\$(PROJNAME).asm \

ROM=\
	$(ROOT)\$(PROJNAME)\$(PROJNAME).rom \

SYM=\
	$(ROOT)\$(PROJNAME)\$(PROJNAME).sym \

LST=\
	$(ROOT)\$(PROJNAME)\$(PROJNAME).lst \

SLD=\
	$(ROOT)\$(PROJNAME)\$(PROJNAME).sld \
# targets
$(ROM): $(SRC) $(SRCS_MSXLIB) $(SRCS_LIBEXT)
	echo Julek test
	echo $(CURDIR)
	$(ASM) $(ASM_FLAGS) $< 

# default targets
include msxlib.makefile