# -----------------------------------------------------------------------------
# $Id: paths.mk,v 1.40 2002/04/01 13:57:10 simonpj Exp $
#
# ghc project specific make variables
#

PROJECT_DIR		:= ghc

#-----------------------------------------------------------------------------
# Useful directories
#
#      xxx_DIR_REL      a directory relative to $(GHC_TOP)
#      xxx_DIR          a directory (including $(GHC_TOP))

GHC_INCLUDE_DIR_REL   	= includes
GHC_COMPILER_DIR_REL  	= compiler
GHC_RUNTIME_DIR_REL   	= rts
GHC_UTILS_DIR_REL 	= utils
GHC_DRIVER_DIR_REL	= driver

GHC_UNLIT_DIR_REL	= $(GHC_UTILS_DIR_REL)/unlit
GHC_HSTAGS_DIR_REL	= $(GHC_UTILS_DIR_REL)/hasktags
GHC_TOUCHY_DIR_REL	= $(GHC_UTILS_DIR_REL)/touchy
GHC_PKG_DIR_REL		= $(GHC_UTILS_DIR_REL)/ghc-pkg
GHC_GENPRIMOP_DIR_REL	= $(GHC_UTILS_DIR_REL)/genprimopcode
GHC_MANGLER_DIR_REL 	= $(GHC_DRIVER_DIR_REL)/mangler
GHC_SPLIT_DIR_REL 	= $(GHC_DRIVER_DIR_REL)/split
GHC_SYSMAN_DIR_REL	= $(GHC_RUNTIME_DIR_REL)/parallel

GHC_INCLUDE_DIR   	= $(GHC_TOP)/$(GHC_INCLUDE_DIR_REL)
GHC_COMPILER_DIR  	= $(GHC_TOP)/$(GHC_COMPILER_DIR_REL)
GHC_RUNTIME_DIR   	= $(GHC_TOP)/$(GHC_RUNTIME_DIR_REL)
GHC_UTILS_DIR	 	= $(GHC_TOP)/$(GHC_UTILS_DIR_REL)
GHC_DRIVER_DIR		= $(GHC_TOP)/$(GHC_DRIVER_DIR_REL)
GHC_PKG_DIR		= $(GHC_TOP)/$(GHC_PKG_DIR_REL)
GHC_GENPRIMOP_DIR	= $(GHC_TOP)/$(GHC_GENPRIMOP_DIR_REL)

GHC_LIB_DIR	 	= $(FPTOOLS_TOP)/libraries

# -----------------------------------------------------------------------------
# Names of programs in the GHC tree
#
#      xxx_PGM	        the name of an executable, without the path

GHC_UNLIT_PGM		= unlit$(EXE_SUFFIX)
GHC_HSTAGS_PGM		= hasktags
GHC_TOUCHY_PGM		= touchy$(EXE_SUFFIX)
GHC_MANGLER_PGM		= ghc-asm
GHC_SPLIT_PGM		= ghc-split
GHC_SYSMAN_PGM 		= SysMan
GHC_PKG_INPLACE_PGM	= ghc-pkg-inplace
GHC_GENPRIMOP_PGM	= genprimopcode

# -----------------------------------------------------------------------------
# Auxilliary programs used by GHC
#
#      xxx              the pathname to an executable (some using $(TOP))

ifeq "$(TARGETPLATFORM)" "i386-unknown-mingw32"
GHC_CP			= "xcopy /y"
GHC_PERL		= perl
else
GHC_CP			= $(CP)
GHC_PERL		= $(PERL)
endif

GHC_UNLIT		= $(GHC_UNLIT_DIR)/$(GHC_UNLIT_PGM)
GHC_HSTAGS		= $(GHC_HSTAGS_DIR)/$(GHC_HSTAGS_PGM)
GHC_MANGLER		= $(GHC_MANGLER_DIR)/$(GHC_MANGLER_PGM)
GHC_SPLIT		= $(GHC_SPLIT_DIR)/$(GHC_SPLIT_PGM)
GHC_SYSMAN 		= $(GHC_SYSMAN_DIR)/$(GHC_SYSMAN_PGM)
GHC_PKG_INPLACE		= $(GHC_PKG_DIR)/$(GHC_PKG_INPLACE_PGM)
GHC_GENPRIMOP		= $(GHC_GENPRIMOP_DIR)/$(GHC_GENPRIMOP_PGM)
