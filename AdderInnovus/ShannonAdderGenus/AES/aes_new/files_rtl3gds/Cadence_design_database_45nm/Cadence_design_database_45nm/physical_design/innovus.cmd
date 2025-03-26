#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Mar 26 01:58:11 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v23.13-s082_1 (64bit) 11/13/2024 13:42 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 23.13-s082_1 NR241029-2256/23_13-UB (database version 18.20.652) {superthreading v2.20}
#@(#)CDS: AAE 23.13-s019 (64bit) 11/13/2024 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 23.13-s028_1 () Nov 11 2024 03:58:52 ( )
#@(#)CDS: SYNTECH 23.13-s009_1 () Oct 30 2024 09:17:13 ( )
#@(#)CDS: CPE v23.13-s062
#@(#)CDS: IQuantus/TQuantus 23.1.1-s235 (64bit) Fri Sep 27 22:21:33 PDT 2024 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win
save_global adder.globals
set init_gnd_net VSS
set init_lef_file {../lef/gsclib045_tech.lef ../lef/gsclib045_macro.lef}
set init_design_settop 0
set init_verilog ../synthesis/reports/hdl_synthesis.v
set init_mmmc_file adder.view
set init_pwr_net VDD
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -r 0.94128440367 0.699966 5 5 5 5
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {}
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {}
globalNetConnect VDD -type tiehi -instanceBasename * -hierarchicalInstance {}
globalNetConnect VSS -type tielo -instanceBasename * -hierarchicalInstance {}
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {}
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {}
globalNetConnect VDD -type tiehi -instanceBasename * -hierarchicalInstance {}
globalNetConnect VSS -type tielo -instanceBasename * -hierarchicalInstance {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal11 bottom Metal11 left Metal9 right Metal10} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.45 bottom 0.45 left 0.45 right 0.45} -offset {top 0.5 bottom 0.5 left 0.5 right 0.5} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal11 bottom Metal11 left Metal9 right Metal10} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.45 bottom 0.45 left 0.45 right 0.45} -offset {top 0.5 bottom 0.5 left 0.5 right 0.5} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
zoomOut
zoomBox -57.80450 -23.27750 84.12900 48.67100
zoomBox -47.19200 -17.99050 73.45200 43.16600
zoomBox -38.17200 -13.49650 64.37650 38.48700
zoomBox -30.50450 -9.67650 56.66200 34.50950
zoomOut
zoomBox -98.11750 -44.12150 124.15700 68.55300
zoomBox -55.36200 -22.82100 81.14300 46.37550
zoomBox -36.47900 -13.41350 62.14600 36.58100
zoomBox -29.14900 -9.71300 54.68250 32.78250
zoomBox -22.91900 -6.56750 48.33850 29.55400
zoomBox -17.57200 -3.73300 42.99750 26.97050
saveDesign adder_POWERRING
saveDesign adder_POWERRING
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal10 -direction vertical -width 1.8 -spacing 0.45 -number_of_sets 2 -start_from left -start_offset 1 -stop_offset 1 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
zoomOut
zoomBox -52.24800 -21.79300 79.03750 44.75750
zoomBox -26.23300 -9.09000 54.39300 31.78050
zoomBox -20.47350 -5.73000 48.05900 29.01000
saveDesign adder_STRIPES
saveDesign adder_STRIPES
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report adder.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
::uiSetTool getLocation Rda_PE::Attr:getStartCoord
uiSetTool select
::uiSetTool getLocation Rda_PE::Attr:getStartCoord
uiSetTool select
::uiSetTool getLocation Rda_PE::Attr:getStartCoord
uiSetTool select
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 1 -spreadType start -spacing 2.2 -start 7.3435 25.301 -pin {{a[0]} {a[1]} {a[2]} {a[3]} {a[4]} {a[5]} {a[6]} {a[7]}}
setPinAssignMode -pinEditInBatch false
::uiSetTool getLocation Rda_PE::Attr:getStartCoord
uiSetTool select
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -side Left -layer 1 -assign 0.173 12.0315 -pin clk
setPinAssignMode -pinEditInBatch false
zoomBox -12.63450 -3.53550 29.45350 17.79950
zoomBox -7.83000 -2.20750 18.01750 10.89500
zoomBox -3.57650 -1.04000 7.89300 4.77400
zoomBox -2.25750 -0.68100 4.78700 2.89000
zoomBox -1.23300 -0.39400 2.44500 1.47050
zoomBox -0.92250 -0.30650 1.73550 1.04100
zoomBox -0.60950 -0.20200 1.02300 0.62550
zoomBox -0.37150 -0.12200 0.48100 0.31000
zoomBox -0.27200 -0.08900 0.25250 0.17700
zoomBox -0.19500 -0.06050 0.07850 0.07800
zoomBox -0.15350 -0.03850 -0.00950 0.03450
zoomBox -0.14100 -0.03150 -0.03650 0.02150
zoomBox -0.17300 -0.04900 0.02850 0.05300
zoomBox -0.31150 -0.12750 0.31800 0.19150
zoomBox -0.39150 -0.17250 0.48150 0.27000
zoomBox -0.74650 -0.37300 1.22200 0.62500
zoomBox -1.33150 -0.70450 2.44250 1.20850
zoomBox -1.80050 -0.97050 3.42300 1.67750
zoomBox -4.87750 -3.40700 6.89650 2.56150
zoomBox -5.85400 -4.18550 7.99850 2.83650
zoomBox -9.93700 -7.45200 12.62000 3.98250
zoomBox -28.00750 -21.20450 22.83200 4.56700
zoomBox -30.87700 -21.45950 66.51650 27.91050
::uiSetTool getLocation Rda_PE::Attr:getStartCoord
uiSetTool select
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType start -spacing 2.2 -start 12.5195 0.268 -pin {{b[0]} {b[1]} {b[2]} {b[3]} {b[4]} {b[5]} {b[6]} {b[7]}}
setPinAssignMode -pinEditInBatch false
::uiSetTool getLocation Rda_PE::Attr:getStartCoord
uiSetTool select
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.06 -pinDepth 0.335 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType start -spacing 2.2 -start 0.631 0.1505 -pin {{b[0]} {b[1]} {b[2]} {b[3]} {b[4]} {b[5]} {b[6]} {b[7]}}
setPinAssignMode -pinEditInBatch false
::uiSetTool getLocation Rda_PE::Attr:getStartCoord
uiSetTool select
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.06 -pinDepth 0.335 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType start -spacing 2.2 -start 24.877 0.0335 -pin {{b[0]} {b[1]} {b[2]} {b[3]} {b[4]} {b[5]} {b[6]} {b[7]}}
setPinAssignMode -pinEditInBatch false
::uiSetTool getLocation Rda_PE::Attr:getStartCoord
uiSetTool select
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 1 -spreadType start -spacing 2.4 -start 26.2825 22.698 -pin {{sum[0]} {sum[1]} {sum[2]} {sum[3]} {sum[4]} {sum[5]} {sum[6]} {sum[7]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.06 -pinDepth 0.335 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 1 -spreadType start -spacing 2.47 -start 26.4 22.515 -pin {{sum[0]} {sum[1]} {sum[2]} {sum[3]} {sum[4]} {sum[5]} {sum[6]} {sum[7]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.06 -pinDepth 0.335 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 1 -spreadType start -spacing 2.47 -start 26.4 22.515 -pin {{sum[0]} {sum[1]} {sum[2]} {sum[3]} {sum[4]} {sum[5]} {sum[6]} {sum[7]}}
setPinAssignMode -pinEditInBatch false
setDrawView ameba
setDrawView fplan
zoomBox -38.51450 -28.97300 76.06600 29.10950
zoomBox -31.02150 -21.05650 66.37200 28.31350
zoomBox -24.65250 -14.32750 58.13200 27.63700
zoomBox -31.02150 -21.05650 66.37200 28.31350
saveDesign adder_pin
saveDesign adder_pin
setPlaceMode -fp false
place_design
checkPlace
setDrawView place
zoomBox -13.99600 -7.00000 45.81600 23.31950
zoomBox -3.83750 1.64550 32.89500 20.26600
zoomBox 2.39200 6.96400 24.95100 18.39950
zoomBox -3.83900 1.64550 32.89500 20.26650
zoomBox -10.05800 -3.66550 40.78500 22.10750
zoomBox -5.43000 1.90000 31.30400 20.52100
zoomBox -7.89750 -0.27100 35.31900 21.63600
zoomBox -14.24050 -6.05600 45.57500 24.26550
zoomBox -1.27750 1.78350 29.94700 17.61150
zoomBox 5.00550 6.48750 21.30600 14.75050
is_innovus_plus
is_innovus_plus
saveDesign adder_placed
getNanoRouteMode -routeStrictlyHonorNonDefaultRule -quiet
report_timing
optDesign -preCTS
report_timing
timeDesign -preCTS
zoomBox -1.55600 2.75350 29.67100 18.58300
zoomBox -20.28100 -2.23750 30.56800 23.53850
zoomBox -38.49600 -10.23550 31.88350 25.44100
zoomBox -64.56950 -22.58900 32.84250 26.79050
zoomBox -28.20150 -4.41650 31.62200 25.90900
zoomBox -124.08700 -51.11200 34.53300 29.29500
zoomOut
zoomBox -96.28400 -37.95100 83.18800 53.02600
zoomBox -33.90650 -6.49250 45.72600 33.87450
set_ccopt_property buffer_cells {CLKBUFX12 CLKBUFX16 CLKBUFX2 CLKBUFX20 CLKBUFX3 CLKBUFX4 CLKBUFX6 CLKBUFX8}
ccopt_design
set_ccopt_property target_max_trans 0.1
ccopt_design
setDrawView fplan
setDrawView ameba
setDrawView fplan
setDrawView place
zoomBox -12.25400 4.35650 29.31500 25.42850
zoomBox -0.84850 10.20150 20.85150 21.20150
zoomBox 3.96000 12.67350 17.28650 19.42900
zoomBox -5.92750 8.04100 24.10800 23.26650
zoomBox -9.06150 6.60950 26.27600 24.52250
zoomBox -35.25000 -5.29950 44.39250 35.07250
zoomOut
zoomBox -65.77300 -22.77550 80.95850 51.60500
zoomBox -35.60800 -8.71450 54.50400 36.96450
zoomBox -28.30900 -5.34150 48.28600 33.48550
zoomBox -16.83150 0.02650 38.50850 28.07900
zoomBox -22.11100 -2.44000 42.99500 30.56300
set_ccopt_property buffer_cells {CLKBUFX12 CLKBUFX16 CLKBUFX2 CLKBUFX20 CLKBUFX3 CLKBUFX4 CLKBUFX6 CLKBUFX8}
ccopt_design
set_ccopt_property target_max_trans 0.1
set_ccopt_property buffer_cells {CLKBUFX12 CLKBUFX16 CLKBUFX2 CLKBUFX20 CLKBUFX3 CLKBUFX4 CLKBUFX6 CLKBUFX8}
ccopt_design
encMessage warning 0
encMessage debug 0
is_common_ui_mode
restoreDesign /home/dcmosimt2022552/Desktop/ShannonAdderGenus/AES/aes_new/files_rtl3gds/Cadence_design_database_45nm/Cadence_design_database_45nm/physical_design/adder_placed.dat adder
encMessage warning 1
encMessage debug 0
encMessage warning 0
encMessage debug 0
is_common_ui_mode
restoreDesign /home/dcmosimt2022552/Desktop/ShannonAdderGenus/AES/aes_new/files_rtl3gds/Cadence_design_database_45nm/Cadence_design_database_45nm/physical_design/adder_placed.dat adder
encMessage warning 1
encMessage debug 0
encMessage warning 0
encMessage debug 0
is_common_ui_mode
restoreDesign /home/dcmosimt2022552/Desktop/ShannonAdderGenus/AES/aes_new/files_rtl3gds/Cadence_design_database_45nm/Cadence_design_database_45nm/physical_design/adder_placed.dat adder
encMessage warning 1
encMessage debug 0
encMessage warning 0
encMessage debug 0
is_common_ui_mode
restoreDesign /home/dcmosimt2022552/Desktop/ShannonAdderGenus/AES/aes_new/files_rtl3gds/Cadence_design_database_45nm/Cadence_design_database_45nm/physical_design/adder_pin.dat adder
encMessage warning 1
encMessage debug 0
setDrawView fplan
zoomBox -102.67600 -35.17200 69.95150 52.33550
zoomBox -57.05350 -15.90550 48.96250 37.83550
zoomBox -22.49800 -1.18750 32.84350 26.86600
zoomOut
