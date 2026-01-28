`timescale 1ns/1ns
module decoder_tb;
    localparam n=2;
    logic [n-1:0] in;
    logic [2**n-1:0] out;

    decoder #(.N(n)) design_instance (
        .code_in(in),
        .out(out)
    );

    initial begin
        $dumpfile("dump.vcd"); $dumpvars;
        in = 'bX;
        #100;
        in = 'bZ;
        #100;
        in = 0;
        #100;
        in[0] = 1'bX;
        #100;
        in[0] = 1'bZ;
        #100;
        in = 0;

        #50;
        for(int i=1; i < 2**n; i++) begin
            #50;
            in++;
            #50;
        end
    end

    initial begin
        $monitor("time = %0t , input code = %b , out = %b\n" , $time, in, out);
    end
endmodule