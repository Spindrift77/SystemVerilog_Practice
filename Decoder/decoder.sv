module decoder #(parameter N=2) (
    input [N-1:0] code_in,
    output logic [2**N - 1:0] out
);

    always_comb begin
        out = 0;
        if(^code_in !== 1'bX && ^code_in !== 1'bZ) begin
            out[code_in] = 1;
        end
    end

endmodule