`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module top_module_tb;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;


    wire andgate.in;
    wire andgate.out;


    integer mismatch_count;

    top_module UUT (.andgate.in(andgate.in), .andgate.out(andgate.out));

    initial begin
        mismatch_count = 0;

        // Tick 0: Inputs = , Generated = andgate.in, andgate.out, Reference = 1'b0, 1'b0
        // No input assignments for this tick
        #period;
        if (!(andgate.in === 1'b0 && andgate.out === 1'b0)) begin
            $display("Mismatch at index 0: Inputs = [], Generated = [%b, %b], Reference = [%b, %b]", andgate.in, andgate.out, 1'b0, 1'b0);
            mismatch_count = mismatch_count + 1;
            $finish;
        end

        else begin
            $display("Test 0 passed!");
        end

        // Tick 1: Inputs = , Generated = andgate.in, andgate.out, Reference = 1'b1, 1'b0
        // No input assignments for this tick
        #period;
        if (!(andgate.in === 1'b1 && andgate.out === 1'b0)) begin
            $display("Mismatch at index 1: Inputs = [], Generated = [%b, %b], Reference = [%b, %b]", andgate.in, andgate.out, 1'b1, 1'b0);
            mismatch_count = mismatch_count + 1;
            $finish;
        end

        else begin
            $display("Test 1 passed!");
        end

        // Tick 2: Inputs = , Generated = andgate.in, andgate.out, Reference = 1'b10, 1'b0
        // No input assignments for this tick
        #period;
        if (!(andgate.in === 1'b10 && andgate.out === 1'b0)) begin
            $display("Mismatch at index 2: Inputs = [], Generated = [%b, %b], Reference = [%b, %b]", andgate.in, andgate.out, 1'b10, 1'b0);
            mismatch_count = mismatch_count + 1;
            $finish;
        end

        else begin
            $display("Test 2 passed!");
        end

        // Tick 3: Inputs = , Generated = andgate.in, andgate.out, Reference = 1'b11, 1'b1
        // No input assignments for this tick
        #period;
        if (!(andgate.in === 1'b11 && andgate.out === 1'b1)) begin
            $display("Mismatch at index 3: Inputs = [], Generated = [%b, %b], Reference = [%b, %b]", andgate.in, andgate.out, 1'b11, 1'b1);
            mismatch_count = mismatch_count + 1;
            $finish;
        end

        else begin
            $display("Test 3 passed!");
        end

        if (mismatch_count == 0)
            $display("All tests passed!");
        else
            $display("%0d mismatches out of %0d total tests.", mismatch_count, 4);
        $finish;
    end

endmodule