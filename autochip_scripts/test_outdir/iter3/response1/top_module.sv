module top_module(
    input clk,
    input load,
    input [511:0] data,
    output reg [511:0] q
);
    reg [511:0] next_q;

    always @(*) begin
        next_q = 0; // Initialize next_q to zero (off)
        for (int i = 0; i < 512; i = i + 1) begin
            case ({(i == 0 ? 1'b0 : q[i - 1]), q[i], (i == 511 ? 1'b0 : q[i + 1])})
                3'b111: next_q[i] = 0;
                3'b110: next_q[i] = 1;
                3'b101: next_q[i] = 1;
                3'b100: next_q[i] = 0;
                3'b011: next_q[i] = 1;
                3'b010: next_q[i] = 1;
                3'b001: next_q[i] = 1;
                3'b000: next_q[i] = 0;
                default: next_q[i] = 0; // Ensure a default case for safety
            endcase
        end
    end

    always @(posedge clk) begin
        if (load) 
            q <= data;
        else 
            q <= next_q;
    end
endmodule
