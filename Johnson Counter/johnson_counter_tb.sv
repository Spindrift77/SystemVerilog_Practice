`timescale 1ns/1ns
module johnson_counter_tb;
    localparam n = 4;
    logic [n-1:0] count;
    logic clk;
    logic reset;

    johnson_counter #(.N(n)) design_instance(
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    initial begin
        $dumpfile("dump.vcd"); $dumpvars;
        reset = 1;
        clk = 0;
        #10 reset = 0;
        #100 $stop;
    end
  
    always begin
        #5 clk = 1;
        #5 clk = 0;
    end

    initial begin
        $monitor("time = %0t, count = %b\n", $time, count);
    end
endmodule