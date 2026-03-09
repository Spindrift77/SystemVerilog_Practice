module johnson_counter #(parameter N = 4) (
    input clk,
    input reset,
    output logic [N-1:0] count
);
    always_ff @(posedge clk) begin
        if(reset == 1) begin
            count <= 0;
        end else begin
            count[0] <= ~count[N-1];
            for(int i = 0; i < N-1; i++) begin
                count[i+1] <= count[i];
            end
        end
    end
endmodule