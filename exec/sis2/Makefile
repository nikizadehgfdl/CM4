# Makefile created by mkmf 2022.01.00


CPPDEFS = -DINTERNAL_FILE_NML -g -DUSE_FMS2_IO

OTHERFLAGS = -I$(BUILDROOT)mom6 -I$(BUILDROOT)fms/build/.mods -I$(SRCROOT)FMS/include

include $(MK_TEMPLATE)


.DEFAULT:
	-echo $@ does not exist.
all: libsis2.a
SIS2_ice_thm.o: $(SRCROOT)SIS2/src/SIS2_ice_thm.F90 $(SRCROOT)MOM6/src/framework/version_variable.h ice_thm.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)MOM6/src/framework	$(SRCROOT)SIS2/src/SIS2_ice_thm.F90
SIS_continuity.o: $(SRCROOT)SIS2/src/SIS_continuity.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h ice_grid.o SIS_diag_mediator.o SIS_hor_grid.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_continuity.F90
SIS_ctrl_types.o: $(SRCROOT)SIS2/src/SIS_ctrl_types.F90 ice_grid.o SIS_diag_mediator.o SIS_dyn_trans.o SIS_fast_thermo.o SIS_framework.o SIS_hor_grid.o SIS_optics.o SIS_slow_thermo.o SIS_sum_output.o SIS_tracer_flow_control.o SIS_types.o specified_ice.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/src/SIS_ctrl_types.F90
SIS_debugging.o: $(SRCROOT)SIS2/src/SIS_debugging.F90 $(SRCROOT)MOM6/src/framework/version_variable.h SIS_hor_grid.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)MOM6/src/framework	$(SRCROOT)SIS2/src/SIS_debugging.F90
SIS_diag_mediator.o: $(SRCROOT)SIS2/src/SIS_diag_mediator.F90 $(SRCROOT)MOM6/src/framework/version_variable.h ice_grid.o SIS_hor_grid.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)MOM6/src/framework	$(SRCROOT)SIS2/src/SIS_diag_mediator.F90
SIS_dyn_bgrid.o: $(SRCROOT)SIS2/src/SIS_dyn_bgrid.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h SIS_diag_mediator.o SIS_debugging.o SIS_restart.o SIS_framework.o SIS_hor_grid.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_dyn_bgrid.F90
SIS_dyn_cgrid.o: $(SRCROOT)SIS2/src/SIS_dyn_cgrid.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h ice_grid.o SIS_diag_mediator.o SIS_debugging.o SIS_restart.o SIS_framework.o SIS_hor_grid.o SIS_types.o SIS2_ice_thm.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_dyn_cgrid.F90
SIS_dyn_trans.o: $(SRCROOT)SIS2/src/SIS_dyn_trans.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h SIS_continuity.o SIS_debugging.o SIS_diag_mediator.o SIS_dyn_bgrid.o SIS_dyn_cgrid.o SIS_restart.o SIS_framework.o SIS_hor_grid.o SIS_ice_diags.o SIS_open_boundary.o SIS_sum_output.o SIS_tracer_flow_control.o SIS_transport.o SIS_types.o SIS_utils.o SIS2_ice_thm.o slab_ice.o icebergs.o ice_grid.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_dyn_trans.F90
SIS_fast_thermo.o: $(SRCROOT)SIS2/src/SIS_fast_thermo.F90 $(SRCROOT)MOM6/src/framework/version_variable.h ice_boundary_types.o ice_grid.o SIS_debugging.o SIS_diag_mediator.o SIS_framework.o SIS_hor_grid.o SIS_optics.o SIS_types.o SIS2_ice_thm.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)MOM6/src/framework	$(SRCROOT)SIS2/src/SIS_fast_thermo.F90
SIS_fixed_initialization.o: $(SRCROOT)SIS2/src/SIS_fixed_initialization.F90 $(SRCROOT)MOM6/src/framework/version_variable.h SIS_debugging.o SIS_open_boundary.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)MOM6/src/framework	$(SRCROOT)SIS2/src/SIS_fixed_initialization.F90
SIS_framework.o: $(SRCROOT)SIS2/src/SIS_framework.F90 $(SRCROOT)MOM6/src/framework/version_variable.h
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)MOM6/src/framework	$(SRCROOT)SIS2/src/SIS_framework.F90
SIS_get_input.o: $(SRCROOT)SIS2/src/SIS_get_input.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/src/SIS_get_input.F90
SIS_hor_grid.o: $(SRCROOT)SIS2/src/SIS_hor_grid.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_hor_grid.F90
SIS_ice_diags.o: $(SRCROOT)SIS2/src/SIS_ice_diags.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h SIS_diag_mediator.o SIS_framework.o SIS_hor_grid.o SIS_types.o SIS_utils.o SIS2_ice_thm.o ice_grid.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_ice_diags.F90
SIS_open_boundary.o: $(SRCROOT)SIS2/src/SIS_open_boundary.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_open_boundary.F90
SIS_optics.o: $(SRCROOT)SIS2/src/SIS_optics.F90 $(SRCROOT)MOM6/src/framework/version_variable.h ice_shortwave_dEdd.o SIS2_ice_thm.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)MOM6/src/framework	$(SRCROOT)SIS2/src/SIS_optics.F90
SIS_restart.o: $(SRCROOT)SIS2/src/SIS_restart.F90 $(SRCROOT)MOM6/src/framework/version_variable.h ice_grid.o SIS_hor_grid.o SIS_transcribe_grid.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)MOM6/src/framework	$(SRCROOT)SIS2/src/SIS_restart.F90
SIS_slow_thermo.o: $(SRCROOT)SIS2/src/SIS_slow_thermo.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h ice_grid.o ice_spec.o SIS_diag_mediator.o SIS_framework.o SIS_hor_grid.o SIS_optics.o SIS_sum_output.o SIS_tracer_flow_control.o SIS_tracer_registry.o SIS_transport.o SIS_types.o SIS_utils.o SIS2_ice_thm.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_slow_thermo.F90
SIS_state_initialization.o: $(SRCROOT)SIS2/src/SIS_state_initialization.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h ice_grid.o ice_type.o SIS_restart.o SIS_get_input.o SIS_types.o SIS_hor_grid.o SIS2_ice_thm.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_state_initialization.F90
SIS_sum_output.o: $(SRCROOT)SIS2/src/SIS_sum_output.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h SIS_types.o SIS_hor_grid.o ice_grid.o SIS2_ice_thm.o SIS_tracer_flow_control.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_sum_output.F90
SIS_tracer_advect.o: $(SRCROOT)SIS2/src/SIS_tracer_advect.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h SIS_diag_mediator.o SIS_hor_grid.o ice_grid.o SIS_tracer_registry.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_tracer_advect.F90
SIS_tracer_flow_control.o: $(SRCROOT)SIS2/src/SIS_tracer_flow_control.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h ice_grid.o SIS_diag_mediator.o SIS_restart.o SIS_hor_grid.o SIS_tracer_registry.o ice_age_tracer.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_tracer_flow_control.F90
SIS_tracer_registry.o: $(SRCROOT)SIS2/src/SIS_tracer_registry.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h SIS_debugging.o SIS_diag_mediator.o SIS_hor_grid.o ice_grid.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_tracer_registry.F90
SIS_transcribe_grid.o: $(SRCROOT)SIS2/src/SIS_transcribe_grid.F90 SIS_hor_grid.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/src/SIS_transcribe_grid.F90
SIS_transport.o: $(SRCROOT)SIS2/src/SIS_transport.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h SIS_continuity.o SIS_diag_mediator.o SIS_framework.o SIS_hor_grid.o SIS_tracer_advect.o SIS_tracer_registry.o SIS_types.o ice_grid.o ice_ridge.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_transport.F90
SIS_types.o: $(SRCROOT)SIS2/src/SIS_types.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h ice_grid.o SIS_diag_mediator.o SIS_debugging.o SIS_framework.o SIS_restart.o SIS_hor_grid.o SIS_tracer_registry.o SIS2_ice_thm.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/SIS_types.F90
SIS_utils.o: $(SRCROOT)SIS2/src/SIS_utils.F90 SIS_diag_mediator.o SIS_debugging.o SIS_hor_grid.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/src/SIS_utils.F90
combined_ice_ocean_driver.o: $(SRCROOT)SIS2/src/combined_ice_ocean_driver.F90 $(SRCROOT)MOM6/src/framework/version_variable.h ice_model.o ice_boundary_types.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)MOM6/src/framework	$(SRCROOT)SIS2/src/combined_ice_ocean_driver.F90
ice_age_tracer.o: $(SRCROOT)SIS2/src/ice_age_tracer.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h SIS_diag_mediator.o SIS_restart.o SIS_hor_grid.o SIS_tracer_registry.o SIS_utils.o ice_grid.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/ice_age_tracer.F90
ice_albedo.o: $(SRCROOT)ice_param/ice_albedo.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)ice_param/ice_albedo.F90
ice_boundary_types.o: $(SRCROOT)SIS2/src/ice_boundary_types.F90 SIS_framework.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/src/ice_boundary_types.F90
ice_grid.o: $(SRCROOT)SIS2/src/ice_grid.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/ice_grid.F90
ice_model.o: $(SRCROOT)SIS2/src/ice_model.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h ocean_albedo.o ocean_rough.o icebergs.o ice_boundary_types.o ice_grid.o ice_spec.o ice_type.o SIS_ctrl_types.o SIS_debugging.o SIS_diag_mediator.o SIS_dyn_trans.o SIS_fast_thermo.o SIS_framework.o SIS_restart.o SIS_fixed_initialization.o SIS_get_input.o SIS_hor_grid.o SIS_open_boundary.o SIS_optics.o SIS_slow_thermo.o SIS_state_initialization.o SIS_sum_output.o SIS_tracer_flow_control.o SIS_tracer_registry.o SIS_transcribe_grid.o SIS_transport.o SIS_types.o SIS_utils.o SIS2_ice_thm.o specified_ice.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/ice_model.F90
ice_ridge.o: $(SRCROOT)SIS2/src/ice_ridge.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h SIS_diag_mediator.o SIS_hor_grid.o SIS_types.o SIS_tracer_registry.o SIS2_ice_thm.o ice_grid.o icepack_kinds.o icepack_itd.o icepack_mechred.o icepack_warnings.o icepack_tracers.o icepack_parameters.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/ice_ridge.F90
ice_shortwave_dEdd.o: $(SRCROOT)SIS2/src/ice_shortwave_dEdd.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/src/ice_shortwave_dEdd.F90
ice_spec.o: $(SRCROOT)SIS2/src/ice_spec.F90 SIS_framework.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/src/ice_spec.F90
ice_thm.o: $(SRCROOT)SIS2/src/ice_thm.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/src/ice_thm.F90
ice_type.o: $(SRCROOT)SIS2/src/ice_type.F90 icebergs.o ice_grid.o SIS_ctrl_types.o SIS_debugging.o SIS_diag_mediator.o SIS_framework.o SIS_restart.o SIS_hor_grid.o SIS_open_boundary.o SIS_types.o SIS2_ice_thm.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/src/ice_type.F90
icebergs.o: $(SRCROOT)icebergs/icebergs.F90 icebergs_framework.o icebergs_io.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)icebergs/icebergs.F90
icebergs_framework.o: $(SRCROOT)icebergs/icebergs_framework.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)icebergs/icebergs_framework.F90
icebergs_io.o: $(SRCROOT)icebergs/icebergs_io.F90 
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)icebergs/icebergs_io.F90
icepack_itd.o: $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_itd.F90 icepack_kinds.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_itd.F90
icepack_kinds.o: $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_kinds.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_kinds.F90
icepack_mechred.o: $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_mechred.F90 icepack_kinds.o icepack_tracers.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_mechred.F90
icepack_parameters.o: $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_parameters.F90 icepack_kinds.o icepack_warnings.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_parameters.F90
icepack_tracers.o: $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_tracers.F90 icepack_kinds.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_tracers.F90
icepack_warnings.o: $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_warnings.F90 icepack_kinds.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_warnings.F90
ocean_albedo.o: $(SRCROOT)ice_param/ocean_albedo.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)ice_param/ocean_albedo.F90
ocean_rough.o: $(SRCROOT)ice_param/ocean_rough.F90
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c	$(SRCROOT)ice_param/ocean_rough.F90
slab_ice.o: $(SRCROOT)SIS2/src/slab_ice.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h SIS_hor_grid.o ice_grid.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/slab_ice.F90
specified_ice.o: $(SRCROOT)SIS2/src/specified_ice.F90 $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)MOM6/src/framework/version_variable.h SIS_diag_mediator.o SIS_hor_grid.o SIS_ice_diags.o SIS_sum_output.o SIS_types.o ice_grid.o
	$(FC) $(CPPDEFS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) $(OTHER_FFLAGS) -c -I$(SRCROOT)SIS2/config_src/dynamic_symmetric -I$(SRCROOT)MOM6/src/framework -I$(SRCROOT)SIS2/src	$(SRCROOT)SIS2/src/specified_ice.F90
./version_variable.h: $(SRCROOT)MOM6/src/framework/version_variable.h
	cp $(SRCROOT)MOM6/src/framework/version_variable.h .
./ice_albedo.F90: $(SRCROOT)ice_param/ice_albedo.F90
	cp $(SRCROOT)ice_param/ice_albedo.F90 .
./SIS_state_initialization.F90: $(SRCROOT)SIS2/src/SIS_state_initialization.F90
	cp $(SRCROOT)SIS2/src/SIS_state_initialization.F90 .
./SIS_dyn_trans.F90: $(SRCROOT)SIS2/src/SIS_dyn_trans.F90
	cp $(SRCROOT)SIS2/src/SIS_dyn_trans.F90 .
./ice_grid.F90: $(SRCROOT)SIS2/src/ice_grid.F90
	cp $(SRCROOT)SIS2/src/ice_grid.F90 .
./icepack_tracers.F90: $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_tracers.F90
	cp $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_tracers.F90 .
./icepack_itd.F90: $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_itd.F90
	cp $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_itd.F90 .
./ice_ridge.F90: $(SRCROOT)SIS2/src/ice_ridge.F90
	cp $(SRCROOT)SIS2/src/ice_ridge.F90 .
./SIS_tracer_advect.F90: $(SRCROOT)SIS2/src/SIS_tracer_advect.F90
	cp $(SRCROOT)SIS2/src/SIS_tracer_advect.F90 .
./icepack_parameters.F90: $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_parameters.F90
	cp $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_parameters.F90 .
./SIS_transcribe_grid.F90: $(SRCROOT)SIS2/src/SIS_transcribe_grid.F90
	cp $(SRCROOT)SIS2/src/SIS_transcribe_grid.F90 .
./SIS_ice_diags.F90: $(SRCROOT)SIS2/src/SIS_ice_diags.F90
	cp $(SRCROOT)SIS2/src/SIS_ice_diags.F90 .
./icebergs_io.F90: $(SRCROOT)icebergs/icebergs_io.F90
	cp $(SRCROOT)icebergs/icebergs_io.F90 .
./ice_spec.F90: $(SRCROOT)SIS2/src/ice_spec.F90
	cp $(SRCROOT)SIS2/src/ice_spec.F90 .
./ice_age_tracer.F90: $(SRCROOT)SIS2/src/ice_age_tracer.F90
	cp $(SRCROOT)SIS2/src/ice_age_tracer.F90 .
./SIS_framework.F90: $(SRCROOT)SIS2/src/SIS_framework.F90
	cp $(SRCROOT)SIS2/src/SIS_framework.F90 .
./SIS_diag_mediator.F90: $(SRCROOT)SIS2/src/SIS_diag_mediator.F90
	cp $(SRCROOT)SIS2/src/SIS_diag_mediator.F90 .
./SIS2_ice_thm.F90: $(SRCROOT)SIS2/src/SIS2_ice_thm.F90
	cp $(SRCROOT)SIS2/src/SIS2_ice_thm.F90 .
./slab_ice.F90: $(SRCROOT)SIS2/src/slab_ice.F90
	cp $(SRCROOT)SIS2/src/slab_ice.F90 .
./MOM_memory_macros.h: $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h
	cp $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h .
./SIS2_memory.h: $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h
	cp $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h .
./SIS_dyn_bgrid.F90: $(SRCROOT)SIS2/src/SIS_dyn_bgrid.F90
	cp $(SRCROOT)SIS2/src/SIS_dyn_bgrid.F90 .
./ice_boundary_types.F90: $(SRCROOT)SIS2/src/ice_boundary_types.F90
	cp $(SRCROOT)SIS2/src/ice_boundary_types.F90 .
./SIS_debugging.F90: $(SRCROOT)SIS2/src/SIS_debugging.F90
	cp $(SRCROOT)SIS2/src/SIS_debugging.F90 .
./SIS_restart.F90: $(SRCROOT)SIS2/src/SIS_restart.F90
	cp $(SRCROOT)SIS2/src/SIS_restart.F90 .
./combined_ice_ocean_driver.F90: $(SRCROOT)SIS2/src/combined_ice_ocean_driver.F90
	cp $(SRCROOT)SIS2/src/combined_ice_ocean_driver.F90 .
./icebergs_framework.F90: $(SRCROOT)icebergs/icebergs_framework.F90
	cp $(SRCROOT)icebergs/icebergs_framework.F90 .
./SIS_fixed_initialization.F90: $(SRCROOT)SIS2/src/SIS_fixed_initialization.F90
	cp $(SRCROOT)SIS2/src/SIS_fixed_initialization.F90 .
./SIS_utils.F90: $(SRCROOT)SIS2/src/SIS_utils.F90
	cp $(SRCROOT)SIS2/src/SIS_utils.F90 .
./specified_ice.F90: $(SRCROOT)SIS2/src/specified_ice.F90
	cp $(SRCROOT)SIS2/src/specified_ice.F90 .
./SIS_ctrl_types.F90: $(SRCROOT)SIS2/src/SIS_ctrl_types.F90
	cp $(SRCROOT)SIS2/src/SIS_ctrl_types.F90 .
./icebergs.F90: $(SRCROOT)icebergs/icebergs.F90
	cp $(SRCROOT)icebergs/icebergs.F90 .
./icepack_mechred.F90: $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_mechred.F90
	cp $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_mechred.F90 .
./SIS_open_boundary.F90: $(SRCROOT)SIS2/src/SIS_open_boundary.F90
	cp $(SRCROOT)SIS2/src/SIS_open_boundary.F90 .
./SIS_continuity.F90: $(SRCROOT)SIS2/src/SIS_continuity.F90
	cp $(SRCROOT)SIS2/src/SIS_continuity.F90 .
./SIS_dyn_cgrid.F90: $(SRCROOT)SIS2/src/SIS_dyn_cgrid.F90
	cp $(SRCROOT)SIS2/src/SIS_dyn_cgrid.F90 .
./ice_type.F90: $(SRCROOT)SIS2/src/ice_type.F90
	cp $(SRCROOT)SIS2/src/ice_type.F90 .
./SIS_slow_thermo.F90: $(SRCROOT)SIS2/src/SIS_slow_thermo.F90
	cp $(SRCROOT)SIS2/src/SIS_slow_thermo.F90 .
./icepack_warnings.F90: $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_warnings.F90
	cp $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_warnings.F90 .
./SIS_transport.F90: $(SRCROOT)SIS2/src/SIS_transport.F90
	cp $(SRCROOT)SIS2/src/SIS_transport.F90 .
./ocean_rough.F90: $(SRCROOT)ice_param/ocean_rough.F90
	cp $(SRCROOT)ice_param/ocean_rough.F90 .
./SIS_fast_thermo.F90: $(SRCROOT)SIS2/src/SIS_fast_thermo.F90
	cp $(SRCROOT)SIS2/src/SIS_fast_thermo.F90 .
./SIS_optics.F90: $(SRCROOT)SIS2/src/SIS_optics.F90
	cp $(SRCROOT)SIS2/src/SIS_optics.F90 .
./SIS_types.F90: $(SRCROOT)SIS2/src/SIS_types.F90
	cp $(SRCROOT)SIS2/src/SIS_types.F90 .
./SIS_tracer_registry.F90: $(SRCROOT)SIS2/src/SIS_tracer_registry.F90
	cp $(SRCROOT)SIS2/src/SIS_tracer_registry.F90 .
./ice_model.F90: $(SRCROOT)SIS2/src/ice_model.F90
	cp $(SRCROOT)SIS2/src/ice_model.F90 .
./ice_shortwave_dEdd.F90: $(SRCROOT)SIS2/src/ice_shortwave_dEdd.F90
	cp $(SRCROOT)SIS2/src/ice_shortwave_dEdd.F90 .
./ice_thm.F90: $(SRCROOT)SIS2/src/ice_thm.F90
	cp $(SRCROOT)SIS2/src/ice_thm.F90 .
./SIS_hor_grid.F90: $(SRCROOT)SIS2/src/SIS_hor_grid.F90
	cp $(SRCROOT)SIS2/src/SIS_hor_grid.F90 .
./SIS_get_input.F90: $(SRCROOT)SIS2/src/SIS_get_input.F90
	cp $(SRCROOT)SIS2/src/SIS_get_input.F90 .
./SIS_memory_macros.h: $(SRCROOT)SIS2/src/SIS_memory_macros.h
	cp $(SRCROOT)SIS2/src/SIS_memory_macros.h .
./SIS_sum_output.F90: $(SRCROOT)SIS2/src/SIS_sum_output.F90
	cp $(SRCROOT)SIS2/src/SIS_sum_output.F90 .
./SIS_tracer_flow_control.F90: $(SRCROOT)SIS2/src/SIS_tracer_flow_control.F90
	cp $(SRCROOT)SIS2/src/SIS_tracer_flow_control.F90 .
./ocean_albedo.F90: $(SRCROOT)ice_param/ocean_albedo.F90
	cp $(SRCROOT)ice_param/ocean_albedo.F90 .
./icepack_kinds.F90: $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_kinds.F90
	cp $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_kinds.F90 .
SRC = $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_warnings.F90 $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_kinds.F90 $(SRCROOT)SIS2/src/ice_age_tracer.F90 $(SRCROOT)SIS2/src/SIS_continuity.F90 $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_tracers.F90 $(SRCROOT)icebergs/icebergs.F90 $(SRCROOT)SIS2/src/slab_ice.F90 $(SRCROOT)icebergs/icebergs_framework.F90 $(SRCROOT)SIS2/src/SIS_optics.F90 $(SRCROOT)SIS2/src/SIS_diag_mediator.F90 $(SRCROOT)SIS2/src/ice_ridge.F90 $(SRCROOT)SIS2/src/SIS_get_input.F90 $(SRCROOT)SIS2/src/ice_thm.F90 $(SRCROOT)SIS2/src/SIS_tracer_registry.F90 $(SRCROOT)SIS2/src/SIS_tracer_flow_control.F90 $(SRCROOT)SIS2/src/SIS_dyn_bgrid.F90 $(SRCROOT)ice_param/ocean_albedo.F90 $(SRCROOT)SIS2/src/ice_model.F90 $(SRCROOT)icebergs/icebergs_io.F90 $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_parameters.F90 $(SRCROOT)SIS2/src/SIS_debugging.F90 $(SRCROOT)SIS2/src/SIS_ctrl_types.F90 $(SRCROOT)SIS2/src/SIS_restart.F90 $(SRCROOT)SIS2/src/SIS_slow_thermo.F90 $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_mechred.F90 $(SRCROOT)SIS2/src/SIS_dyn_cgrid.F90 $(SRCROOT)SIS2/src/SIS_transcribe_grid.F90 $(SRCROOT)SIS2/src/SIS_dyn_trans.F90 $(SRCROOT)SIS2/src/SIS_sum_output.F90 $(SRCROOT)ice_param/ice_albedo.F90 $(SRCROOT)SIS2/src/SIS_ice_diags.F90 $(SRCROOT)SIS2/src/SIS_tracer_advect.F90 $(SRCROOT)SIS2/src/SIS_state_initialization.F90 $(SRCROOT)SIS2/src/specified_ice.F90 $(SRCROOT)ice_param/ocean_rough.F90 $(SRCROOT)SIS2/src/SIS_fast_thermo.F90 $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_itd.F90 $(SRCROOT)SIS2/src/SIS_utils.F90 $(SRCROOT)SIS2/src/SIS_types.F90 $(SRCROOT)SIS2/src/SIS2_ice_thm.F90 $(SRCROOT)SIS2/src/SIS_framework.F90 $(SRCROOT)SIS2/src/ice_grid.F90 $(SRCROOT)SIS2/src/SIS_open_boundary.F90 $(SRCROOT)SIS2/src/SIS_fixed_initialization.F90 $(SRCROOT)SIS2/src/ice_shortwave_dEdd.F90 $(SRCROOT)SIS2/src/ice_boundary_types.F90 $(SRCROOT)SIS2/src/ice_type.F90 $(SRCROOT)SIS2/src/combined_ice_ocean_driver.F90 $(SRCROOT)SIS2/src/ice_spec.F90 $(SRCROOT)SIS2/src/SIS_transport.F90 $(SRCROOT)SIS2/src/SIS_hor_grid.F90 $(SRCROOT)MOM6/src/framework/version_variable.h $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/src/SIS_memory_macros.h
OBJ = icepack_warnings.o icepack_kinds.o ice_age_tracer.o SIS_continuity.o icepack_tracers.o icebergs.o slab_ice.o icebergs_framework.o SIS_optics.o SIS_diag_mediator.o ice_ridge.o SIS_get_input.o ice_thm.o SIS_tracer_registry.o SIS_tracer_flow_control.o SIS_dyn_bgrid.o ocean_albedo.o ice_model.o icebergs_io.o icepack_parameters.o SIS_debugging.o SIS_ctrl_types.o SIS_restart.o SIS_slow_thermo.o icepack_mechred.o SIS_dyn_cgrid.o SIS_transcribe_grid.o SIS_dyn_trans.o SIS_sum_output.o ice_albedo.o SIS_ice_diags.o SIS_tracer_advect.o SIS_state_initialization.o specified_ice.o ocean_rough.o SIS_fast_thermo.o icepack_itd.o SIS_utils.o SIS_types.o SIS2_ice_thm.o SIS_framework.o ice_grid.o SIS_open_boundary.o SIS_fixed_initialization.o ice_shortwave_dEdd.o ice_boundary_types.o ice_type.o combined_ice_ocean_driver.o ice_spec.o SIS_transport.o SIS_hor_grid.o
OFF = $(SRCROOT)MOM6/src/framework/version_variable.h $(SRCROOT)ice_param/ice_albedo.F90 $(SRCROOT)SIS2/src/SIS_state_initialization.F90 $(SRCROOT)SIS2/src/SIS_dyn_trans.F90 $(SRCROOT)SIS2/src/ice_grid.F90 $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_tracers.F90 $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_itd.F90 $(SRCROOT)SIS2/src/ice_ridge.F90 $(SRCROOT)SIS2/src/SIS_tracer_advect.F90 $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_parameters.F90 $(SRCROOT)SIS2/src/SIS_transcribe_grid.F90 $(SRCROOT)SIS2/src/SIS_ice_diags.F90 $(SRCROOT)icebergs/icebergs_io.F90 $(SRCROOT)SIS2/src/ice_spec.F90 $(SRCROOT)SIS2/src/ice_age_tracer.F90 $(SRCROOT)SIS2/src/SIS_framework.F90 $(SRCROOT)SIS2/src/SIS_diag_mediator.F90 $(SRCROOT)SIS2/src/SIS2_ice_thm.F90 $(SRCROOT)SIS2/src/slab_ice.F90 $(SRCROOT)MOM6/src/framework/MOM_memory_macros.h $(SRCROOT)SIS2/config_src/dynamic_symmetric/SIS2_memory.h $(SRCROOT)SIS2/src/SIS_dyn_bgrid.F90 $(SRCROOT)SIS2/src/ice_boundary_types.F90 $(SRCROOT)SIS2/src/SIS_debugging.F90 $(SRCROOT)SIS2/src/SIS_restart.F90 $(SRCROOT)SIS2/src/combined_ice_ocean_driver.F90 $(SRCROOT)icebergs/icebergs_framework.F90 $(SRCROOT)SIS2/src/SIS_fixed_initialization.F90 $(SRCROOT)SIS2/src/SIS_utils.F90 $(SRCROOT)SIS2/src/specified_ice.F90 $(SRCROOT)SIS2/src/SIS_ctrl_types.F90 $(SRCROOT)icebergs/icebergs.F90 $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_mechred.F90 $(SRCROOT)SIS2/src/SIS_open_boundary.F90 $(SRCROOT)SIS2/src/SIS_continuity.F90 $(SRCROOT)SIS2/src/SIS_dyn_cgrid.F90 $(SRCROOT)SIS2/src/ice_type.F90 $(SRCROOT)SIS2/src/SIS_slow_thermo.F90 $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_warnings.F90 $(SRCROOT)SIS2/src/SIS_transport.F90 $(SRCROOT)ice_param/ocean_rough.F90 $(SRCROOT)SIS2/src/SIS_fast_thermo.F90 $(SRCROOT)SIS2/src/SIS_optics.F90 $(SRCROOT)SIS2/src/SIS_types.F90 $(SRCROOT)SIS2/src/SIS_tracer_registry.F90 $(SRCROOT)SIS2/src/ice_model.F90 $(SRCROOT)SIS2/src/ice_shortwave_dEdd.F90 $(SRCROOT)SIS2/src/ice_thm.F90 $(SRCROOT)SIS2/src/SIS_hor_grid.F90 $(SRCROOT)SIS2/src/SIS_get_input.F90 $(SRCROOT)SIS2/src/SIS_memory_macros.h $(SRCROOT)SIS2/src/SIS_sum_output.F90 $(SRCROOT)SIS2/src/SIS_tracer_flow_control.F90 $(SRCROOT)ice_param/ocean_albedo.F90 $(SRCROOT)SIS2/config_src/external/Icepack_interfaces/icepack_kinds.F90
clean: neat
	-rm -f .libsis2.a.cppdefs $(OBJ) libsis2.a

neat:
	-rm -f $(TMPFILES)

localize: $(OFF)
	cp $(OFF) .

TAGS: $(SRC)
	etags $(SRC)

tags: $(SRC)
	ctags $(SRC)

libsis2.a: $(OBJ)
	$(AR) $(ARFLAGS) libsis2.a $(OBJ)

