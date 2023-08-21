`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module top_module_tb;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;

    reg clk;
    reg load;
    reg ena;
    reg [1:0] amount;
    reg [63:0] data;

    wire [63:0] q;


    integer mismatch_count;

    top_module UUT (.clk(clk), .load(load), .ena(ena), .amount(amount), .data(data), .q(q));

    initial // clk generation
    begin
        clk = 0;
        forever begin
            #(period/2);
            clk = ~clk;
        end
    end

    initial begin
        mismatch_count = 0;

        // Tick 0: Inputs = 1'b1, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, Generated = q, Reference = 64'b1000000000000000000000000000000000000000000000000000000000000000
        load = 1'b0; ena = 1'b1; amount = 2'b10; data = 64'b1000000000000000000000000000000000000000000000000000000000000000; // Set input values
        #period;
        if (!(q === 64'b1000000000000000000000000000000000000000000000000000000000000000)) begin
            $display("Mismatch at index 0: Inputs = [%b, %b, %b, %b, %b], Generated = [%b], Reference = [%b]", 1'b1, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, q, 64'b1000000000000000000000000000000000000000000000000000000000000000);
            mismatch_count = mismatch_count + 1;
            $finish;
        end

        else begin
            $display("Test 0 passed!");
        end

        // Tick 1: Inputs = 1'b0, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, Generated = q, Reference = 64'b1000000000000000000000000000000000000000000000000000000000000000
        load = 1'b0; ena = 1'b1; amount = 2'b10; data = 64'b1000000000000000000000000000000000000000000000000000000000000000; // Set input values
        #period;
        if (!(q === 64'b1000000000000000000000000000000000000000000000000000000000000000)) begin
            $display("Mismatch at index 1: Inputs = [%b, %b, %b, %b, %b], Generated = [%b], Reference = [%b]", 1'b0, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, q, 64'b1000000000000000000000000000000000000000000000000000000000000000);
            mismatch_count = mismatch_count + 1;
            $finish;
        end

        else begin
            $display("Test 1 passed!");
        end

        // Tick 2: Inputs = 1'b1, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, Generated = q, Reference = 64'b1100000000000000000000000000000000000000000000000000000000000000
        load = 1'b0; ena = 1'b1; amount = 2'b10; data = 64'b1000000000000000000000000000000000000000000000000000000000000000; // Set input values
        #period;
        if (!(q === 64'b1100000000000000000000000000000000000000000000000000000000000000)) begin
            $display("Mismatch at index 2: Inputs = [%b, %b, %b, %b, %b], Generated = [%b], Reference = [%b]", 1'b1, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, q, 64'b1100000000000000000000000000000000000000000000000000000000000000);
            mismatch_count = mismatch_count + 1;
            $finish;
        end

        else begin
            $display("Test 2 passed!");
        end

        // Tick 3: Inputs = 1'b0, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, Generated = q, Reference = 64'b1100000000000000000000000000000000000000000000000000000000000000
        load = 1'b0; ena = 1'b1; amount = 2'b10; data = 64'b1000000000000000000000000000000000000000000000000000000000000000; // Set input values
        #period;
        if (!(q === 64'b1100000000000000000000000000000000000000000000000000000000000000)) begin
            $display("Mismatch at index 3: Inputs = [%b, %b, %b, %b, %b], Generated = [%b], Reference = [%b]", 1'b0, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, q, 64'b1100000000000000000000000000000000000000000000000000000000000000);
            mismatch_count = mismatch_count + 1;
            $finish;
        end

        else begin
            $display("Test 3 passed!");
        end

        // Tick 4: Inputs = 1'b1, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, Generated = q, Reference = 64'b1110000000000000000000000000000000000000000000000000000000000000
        load = 1'b0; ena = 1'b1; amount = 2'b10; data = 64'b1000000000000000000000000000000000000000000000000000000000000000; // Set input values
        #period;
        if (!(q === 64'b1110000000000000000000000000000000000000000000000000000000000000)) begin
            $display("Mismatch at index 4: Inputs = [%b, %b, %b, %b, %b], Generated = [%b], Reference = [%b]", 1'b1, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, q, 64'b1110000000000000000000000000000000000000000000000000000000000000);
            mismatch_count = mismatch_count + 1;
            $finish;
        end

        else begin
            $display("Test 4 passed!");
        end

        // Tick 5: Inputs = 1'b0, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, Generated = q, Reference = 64'b1110000000000000000000000000000000000000000000000000000000000000
        load = 1'b0; ena = 1'b1; amount = 2'b10; data = 64'b1000000000000000000000000000000000000000000000000000000000000000; // Set input values
        #period;
        if (!(q === 64'b1110000000000000000000000000000000000000000000000000000000000000)) begin
            $display("Mismatch at index 5: Inputs = [%b, %b, %b, %b, %b], Generated = [%b], Reference = [%b]", 1'b0, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, q, 64'b1110000000000000000000000000000000000000000000000000000000000000);
            mismatch_count = mismatch_count + 1;
            $finish;
        end

        else begin
            $display("Test 5 passed!");
        end

        // Tick 6: Inputs = 1'b1, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, Generated = q, Reference = 64'b1111000000000000000000000000000000000000000000000000000000000000
        load = 1'b0; ena = 1'b1; amount = 2'b10; data = 64'b1000000000000000000000000000000000000000000000000000000000000000; // Set input values
        #period;
        if (!(q === 64'b1111000000000000000000000000000000000000000000000000000000000000)) begin
            $display("Mismatch at index 6: Inputs = [%b, %b, %b, %b, %b], Generated = [%b], Reference = [%b]", 1'b1, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, q, 64'b1111000000000000000000000000000000000000000000000000000000000000);
            mismatch_count = mismatch_count + 1;
            $finish;
        end

        else begin
            $display("Test 6 passed!");
        end

        // Tick 7: Inputs = 1'b0, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, Generated = q, Reference = 64'b1111000000000000000000000000000000000000000000000000000000000000
        load = 1'b0; ena = 1'b1; amount = 2'b10; data = 64'b1000000000000000000000000000000000000000000000000000000000000000; // Set input values
        #period;
        if (!(q === 64'b1111000000000000000000000000000000000000000000000000000000000000)) begin
            $display("Mismatch at index 7: Inputs = [%b, %b, %b, %b, %b], Generated = [%b], Reference = [%b]", 1'b0, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, q, 64'b1111000000000000000000000000000000000000000000000000000000000000);
            mismatch_count = mismatch_count + 1;
            $finish;
        end

        else begin
            $display("Test 7 passed!");
        end

        // Tick 8: Inputs = 1'b1, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, Generated = q, Reference = 64'b1111100000000000000000000000000000000000000000000000000000000000
        load = 1'b0; ena = 1'b1; amount = 2'b10; data = 64'b1000000000000000000000000000000000000000000000000000000000000000; // Set input values
        #period;
        if (!(q === 64'b1111100000000000000000000000000000000000000000000000000000000000)) begin
            $display("Mismatch at index 8: Inputs = [%b, %b, %b, %b, %b], Generated = [%b], Reference = [%b]", 1'b1, 1'b0, 1'b1, 2'b10, 64'b1000000000000000000000000000000000000000000000000000000000000000, q, 64'b1111100000000000000000000000000000000000000000000000000000000000);
            mismatch_count = mismatch_count + 1;
            $finish;
        end

        else begin
            $display("Test 8 passed!");
        end

        if (mismatch_count == 0)
            $display("All tests passed!");
        else
            $display("%0d mismatches out of %0d total tests.", mismatch_count, 9);
        $finish;
    end

endmodule