`timescale 1ns/1ns
module mux_nx1_testbench;
    localparam n = 2;
    logic[n-1:0] tb_in; 
    logic [$clog2(n)-1:0] tb_sel;
    logic tb_out;

    mux_nx1 #(.N(n)) design_instance(
        .in(tb_in),
        .sel(tb_sel),
        .out(tb_out)
    );

    initial begin
        $dumpfile("dump.vcd"); $dumpvars;
        tb_in=0;
        tb_sel=0;

        #50;
        for(int i = 0; i <= n; i++) begin
            #50;
            tb_in = $urandom_range(2**n - 1 , 0);
            tb_sel++;
            #50;
        end
    end

    initial begin
        $monitor(" time=%0t,  in=%b  sel=%b  out=%b\n", $time, tb_in, tb_sel, tb_out);
    end
endmodule