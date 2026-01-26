module mux_nx1 #(parameter N = 2) (
  input [N-1:0] in,
  input [$clog2(N) - 1:0] sel,
  output logic out 
);
    always_comb begin
        out = in[sel];
    end
endmodule