# Makefile created by mkmf 2022.01.00

CPPDEFS = -DINTERNAL_FILE_NML -g 

OTHERFLAGS = -I$(BUILDROOT)fms -I$(SRCROOT)FMS/include

TMPFILES = *.o *.mod

include $(MK_TEMPLATE)


.DEFAULT:
	-echo $@ does not exist.
all: libland_null.a
land_model.o: $(SRCROOT)land_null/land_model.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)land_null/land_model.F90
./land_model.F90: $(SRCROOT)land_null/land_model.F90
	cp $(SRCROOT)land_null/land_model.F90 .
SRC = $(SRCROOT)land_null/land_model.F90
OBJ = land_model.o
OFF = $(SRCROOT)land_null/land_model.F90
clean: neat
	-rm -f .libland_null.a.cppdefs $(OBJ) libland_null.a

neat:
	-rm -f $(TMPFILES)

localize: $(OFF)
	cp $(OFF) .

TAGS: $(SRC)
	etags $(SRC)

tags: $(SRC)
	ctags $(SRC)

libland_null.a: $(OBJ)
	$(AR) $(ARFLAGS) libland_null.a $(OBJ)

