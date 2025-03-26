#Step1: Set library paths
#source ~/cshrc_hub 
#cd to synthesis folder..
#genus -legacy_ui

#To remove existing designs if you are re-running it
#rm designs/*
set_attr init_lib_search_path ../lib/
set_attr init_hdl_search_path ../rtl/
set_attr library slow_vdd1v0_basicCells.lib

#Step 2: Read netlist
read_hdl aes.v

#Step 3: Elaborate/connect all modules
elaborate adder
check_design > ./reports/lec/design_check.txt
#Check schematic by clicking on + --> Close --> Hide GUI (do not hit exit)
#Step 4: Read constraints
read_sdc ../constraints/constraints_top.sdc
#This is part of sdc: create_clock -name clk -period 2 -waveform {0 1} [get_ports "clk"] --> 2--> ns
#Slack is in ps


#Step 4: Synthesise the  design to generic gates and set the effort level
set_attr syn_generic_effort high
syn_generic


#syn_map: Maps  the  design  to  the  cells  described in the supplied technology library and performs logic optimization.
syn_map
write_hdl -lec > fv_map.v
write_do_lec -golden_design rtl -revised_design fv_map.v > rtl_to_fv_map.do

# Optimise and run synthesis- key step
set_attr syn_opt_effort high
syn_opt

#Step 7: Report results after optimisation
report_gates 


#Step 9: Write out synthesised netlist- important output
write_hdl -lec > final.v
write_do_lec -golden_design fv_map.v -revised_design final.v > fv_map_final.do
#Open this fv_map_final.do --> remove the last line which says exit 
#Now exit Genus cmd prompt. Run lec on cmd prompt using:  lec -lpgxl -nogui -64 -dofile fv_map_final.do to run this with Conformal
#Once it runs, type the following at LEC command prompt. 
#LEC>set gui on

#Step 10: Report final results
report_gates 
report_area > ./reports/lec/area.txt
report_power > ./reports/lec/power.txt
report_timing> ./reports/lec/timing.txt
#suspend  --> Change constraints --clock, redo read_hdc, syn_generic, syn_map, syn_opt and report_timing --> to check slack.

write_sdc > ./reports/lec/aes_sdc.sdc  
#suspend
write_snapshot -outdir ./snapshot -tag syn_opt
#write_template -simple -outfile simple_template.txt
#write_template -power -outfile template_power.tcl
#write_template -area -outfile template_area.tcl
#write_template -full -outfile template_full.tcl
#write_template -retime -outfile template_retime.tcl

#exit genus
#quit




