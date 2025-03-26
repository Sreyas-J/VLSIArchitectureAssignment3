module adder_tb();

    reg clk;
    reg [7:0] a, b;
    wire [7:0] sum;
    wire cout;

    adder uut (
        .clk(clk),
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        // Initialize waveform dump
        $dumpfile("adder_tb.vcd");
        $dumpvars(0, adder_tb);
        clk=0;

        a = 8'd0;  b = 8'd0;  #10;
        a = 8'd5;  b = 8'd10; #10;
        a = 8'd3;  b = 8'd25; #10;
        a = 8'd240; b = 8'd30; #10;
        a = 8'd255; b = 8'd1;  #10;  // Overflow case
        a = 8'd128; b = 8'd127; #10; // Edge case
        a = 8'd100; b = 8'd200; #10; // Another sum exceeding 8-bit
        a = 8'd50;  b = 8'd50;  #10; // Simple addition
        #30
        $finish;
    end

    always #5 clk=~clk;

    initial begin
        $monitor("Time: %0t | a: %d | b: %d | sum: %d | cout: %b", $time, a, b, sum, cout);
    end

endmodule
