REAd IMplementation Information fv/adder -golden fv_mapv -revised finalv
SET PARAllel Option -threads 1,4 -norelease_license
SET COmpare Options -threads 1,4
SET UNDEfined Cell black_box -noascend -both
ADD SEarch Path ../lib/ -library -both
REAd LIbrary -liberty -both /home/cadencea18/Desktop/AES/aes_new/files_rtl3gds/Cadence_design_database_45nm/Cadence_design_database_45nm/synthesis/../lib/slow_vdd1v0_basicCells.lib
REAd DEsign -verilog95 -golden -lastmod -noelab fv_map.v
ELAborate DEsign -golden -root adder
REAd DEsign -verilog95 -revised -lastmod -noelab final.v
ELAborate DEsign -revised -root adder
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
WRIte VErification Information
REPort VErification Information
REPort IMplementation Information
