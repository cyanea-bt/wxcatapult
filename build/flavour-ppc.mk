# $Id: flavour-ppc.mk,v 1.2 2004/05/06 00:08:11 mthuurne Exp $
#
# Configuration for "ppc" flavour:
# Optimised for PPC-G4 and higher.

# Optimisation flags.
# Needs a manual setting ('export POWERPCG4=true') to optimise for PPC74xx/G4
CXXFLAGS+=-O3 -DNDEBUG -mpowerpc-gfxopt
ifeq ($(POWERPCG4),true)
CXXFLAGS+=-mcpu=7450 -maltivec -mabi=altivec
else
CXXFLAGS+=-mcpu=750
endif

# Strip executable?
# TODO: Stripping would be good, but linker doesn't understand "--strip-all".
CATAPULT_STRIP:=false

