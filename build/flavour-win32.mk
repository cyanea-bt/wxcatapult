# $Id:
#
# Configuration for Win32 flavour:
# Optimised for Pentium 3 but runnable at MMX-Pentium or higher.

# Optimisation flags.
CXXFLAGS+= \
	-Os -mpreferred-stack-boundary=4 \
	-mcpu=pentium3 -march=pentium-mmx -mmmx \
	-fno-force-mem -fno-force-addr \
	-fstrength-reduce -fexpensive-optimizations -fschedule-insns2 \
	-fomit-frame-pointer -fno-default-inline 
#	-DNDEBUG 

# Strip executable?
CATAPULT_STRIP:=true
