REAd IMplementation Information fv/AES_CMAC -golden fv_map -revised fv_mapv
SET PARAllel Option -threads 1,4 -norelease_license
SET COmpare Options -threads 1,4
SET UNDEfined Cell black_box -noascend -both
ADD SEarch Path ../lib/ -library -both
REAd LIbrary -liberty -both /home/cadencea8/Pictures/aes_new/files_rtl3gds/Cadence_design_database_45nm/Cadence_design_database_45nm/synthesis/../lib/slow_vdd1v0_basicCells.lib
REAd DEsign -verilog95 -golden -lastmod -noelab fv/AES_CMAC/fv_map.v.gz
ELAborate DEsign -golden -root AES_CMAC
REAd DEsign -verilog95 -revised -lastmod -noelab fv_map.v
ELAborate DEsign -revised -root AES_CMAC
REPort DEsign Data
REPort BLack Box
SET FLatten Model -seq_constant
SET FLatten Model -seq_constant_x_to 0
SET FLatten Model -nodff_to_dlat_zero
SET FLatten Model -nodff_to_dlat_feedback
SET FLatten Model -hier_seq_merge
CHEck VErification Information
SET ANalyze Option -auto -report_map
SET SYstem Mode lec
REPort UNmapped Points -summary
REPort UNmapped Points -notmapped
ADD COmpared Points -all
COMpare
REPort COmpare Data -class nonequivalent -class abort -class notcompared
REPort VErification -verbose
REPort STatistics
REPort VErification
WRIte VErification Information
REPort VErification Information
REPort IMplementation Information
RESET
SET VErification Information rtl_fv_map_db
REAd IMplementation Information fv/AES_CMAC -revised fv_map
SET PARAllel Option -threads 1,4 -norelease_license
SET COmpare Options -threads 1,4
SET UNDEfined Cell black_box -noascend -both
ADD SEarch Path ../lib/ -library -both
REAd LIbrary -liberty -both /home/cadencea8/Pictures/aes_new/files_rtl3gds/Cadence_design_database_45nm/Cadence_design_database_45nm/synthesis/../lib/slow_vdd1v0_basicCells.lib
SET UNDRiven Signal 0 -golden
SET NAming Style genus -golden
SET NAming Rule %s[%d] -instance_array -golden
SET NAming Rule %s_reg -register -golden
SET NAming Rule %L.%s %L[%d].%s %s -instance -golden
SET NAming Rule %L.%s %L[%d].%s %s -variable -golden
SET NAming Rule -ungroup_separator _ -golden
SET HDl Options -const_port_extend
SET HDl Options -VERILOG_INCLUDE_DIR sep:src:cwd
DELete SEarch Path -all -design -golden
ADD SEarch Path ../rtl/ -design -golden
REAd DEsign -define SYNTHESIS -merge bbox -golden -lastmod -noelab -verilog2k ../rtl/aes.v
ELAborate DEsign -golden -root AES_CMAC -rootonly -rootonly
REAd DEsign -verilog95 -revised -lastmod -noelab fv/AES_CMAC/fv_map.v.gz
ELAborate DEsign -revised -root AES_CMAC
UNIQuify -all -nolib -golden
REPort DEsign Data
REPort BLack Box
SET FLatten Model -seq_constant
SET FLatten Model -seq_constant_x_to 0
SET FLatten Model -nodff_to_dlat_zero
SET FLatten Model -nodff_to_dlat_feedback
SET FLatten Model -hier_seq_merge
SET FLatten Model -balanced_modeling
CHEck VErification Information
SET ANalyze Option -auto -report_map
WRIte HIer_compare Dofile hier_tmp2.lec.do -verbose -noexact_pin_match -constraint -usage -replace -balanced_extraction\
   -input_output_pin_equivalence -prepend_string "report_design_data; report_unmapped_points -summary; report_unmapped_points -notmapped; analyze_datapath -module -verbose; eval analyze_datapath -flowgraph -verbose"
RUN HIer_compare hier_tmp2.lec.do -dynamic_hierarchy
REPort HIer_compare Result -dynamicflattened
REPort VErification -hier -verbose
WRIte VErification Information
REPort VErification Information
REPort IMplementation Information
SET SYstem Mode lec
