# Makefile created by mkmf 2022.01.00

CPPDEFS = -DINTERNAL_FILE_NML -g 

OTHERFLAGS = -I$(BUILDROOT)fms/ -I$(SRCROOT)FMS/include

TMPFILES = *.o *.mod

include $(MK_TEMPLATE)


.DEFAULT:
	-echo $@ does not exist.
all: libatmos_null.a
atmos_model.o: $(SRCROOT)atmos_null/atmos_model.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)atmos_null/atmos_model.F90
atmos_tracer_driver.o: $(SRCROOT)atmos_null/atmos_tracer_driver.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)atmos_null/atmos_tracer_driver.F90
./atmos_model.F90: $(SRCROOT)atmos_null/atmos_model.F90
	cp $(SRCROOT)atmos_null/atmos_model.F90 .
./atmos_tracer_driver.F90: $(SRCROOT)atmos_null/atmos_tracer_driver.F90
	cp $(SRCROOT)atmos_null/atmos_tracer_driver.F90 .
SRC = $(SRCROOT)atmos_null/atmos_tracer_driver.F90 $(SRCROOT)atmos_null/atmos_model.F90
OBJ = atmos_tracer_driver.o atmos_model.o
OFF = $(SRCROOT)atmos_null/atmos_model.F90 $(SRCROOT)atmos_null/atmos_tracer_driver.F90
clean: neat
	-rm -f .libatmos_null.a.cppdefs $(OBJ) libatmos_null.a

neat:
	-rm -f $(TMPFILES)

localize: $(OFF)
	cp $(OFF) .

TAGS: $(SRC)
	etags $(SRC)

tags: $(SRC)
	ctags $(SRC)

libatmos_null.a: $(OBJ)
	$(AR) $(ARFLAGS) libatmos_null.a $(OBJ)
