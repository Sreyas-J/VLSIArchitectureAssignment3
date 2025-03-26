
//input ports
add mapped point clk clk -type PI PI
add mapped point a[7] a[7] -type PI PI
add mapped point a[6] a[6] -type PI PI
add mapped point a[5] a[5] -type PI PI
add mapped point a[4] a[4] -type PI PI
add mapped point a[3] a[3] -type PI PI
add mapped point a[2] a[2] -type PI PI
add mapped point a[1] a[1] -type PI PI
add mapped point a[0] a[0] -type PI PI
add mapped point b[7] b[7] -type PI PI
add mapped point b[6] b[6] -type PI PI
add mapped point b[5] b[5] -type PI PI
add mapped point b[4] b[4] -type PI PI
add mapped point b[3] b[3] -type PI PI
add mapped point b[2] b[2] -type PI PI
add mapped point b[1] b[1] -type PI PI
add mapped point b[0] b[0] -type PI PI

//output ports
add mapped point sum[7] sum[7] -type PO PO
add mapped point sum[6] sum[6] -type PO PO
add mapped point sum[5] sum[5] -type PO PO
add mapped point sum[4] sum[4] -type PO PO
add mapped point sum[3] sum[3] -type PO PO
add mapped point sum[2] sum[2] -type PO PO
add mapped point sum[1] sum[1] -type PO PO
add mapped point sum[0] sum[0] -type PO PO
add mapped point cout cout -type PO PO

//inout ports




//Sequential Pins
add mapped point sum[7]/q sum_reg[7]/Q  -type DFF DFF
add mapped point cout/q cout_reg/Q  -type DFF DFF
add mapped point sum[6]/q sum_reg[6]/Q  -type DFF DFF
add mapped point sum[5]/q sum_reg[5]/Q  -type DFF DFF
add mapped point sum[4]/q sum_reg[4]/Q  -type DFF DFF
add mapped point sum[3]/q sum_reg[3]/Q  -type DFF DFF
add mapped point sum[2]/q sum_reg[2]/Q  -type DFF DFF
add mapped point sum[1]/q sum_reg[1]/Q  -type DFF DFF
add mapped point sum[0]/q sum_reg[0]/Q  -type DFF DFF
add mapped point t2[3]/q t2_reg[3]/Q  -type DFF DFF
add mapped point t2[7]/q t2_reg[7]/Q  -type DFF DFF
add mapped point t1[1]/q t1_reg[1]/Q  -type DFF DFF
add mapped point t2[2]/q t2_reg[2]/Q  -type DFF DFF
add mapped point t2[1]/q t2_reg[1]/Q  -type DFF DFF
add mapped point t1[2]/q t1_reg[2]/Q  -type DFF DFF
add mapped point t2[0]/q t2_reg[0]/Q  -type DFF DFF
add mapped point t1[0]/q t1_reg[0]/Q  -type DFF DFF
add mapped point t2[6]/q t2_reg[6]/Q  -type DFF DFF
add mapped point t2[4]/q t2_reg[4]/Q  -type DFF DFF
add mapped point t2[5]/q t2_reg[5]/Q  -type DFF DFF
add mapped point t1[3]/q t1_reg[3]/Q  -type DFF DFF
add mapped point t1[7]/q t1_reg[7]/Q  -type DFF DFF
add mapped point t1[4]/q t1_reg[4]/Q  -type DFF DFF
add mapped point t1[5]/q t1_reg[5]/Q  -type DFF DFF
add mapped point t1[6]/q t1_reg[6]/Q  -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
