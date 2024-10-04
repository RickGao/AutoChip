// This is a sequential circuit. The circuit consists of combinational logic and one bit of memory (i.e., one flip-flop). The output of the flip-flop has been made observable through the output state.

// Read the simulation waveforms to determine what the circuit does, then implement it.

// time            clk             a               b               state           q               
// 0ns             0               1               x               x               x               
// 5ns             1               1               x               x               x               
// 10ns            0               0               0               x               x               
// 15ns            1               0               0               0               0               
// 20ns            0               0               0               0               0               
// 25ns            1               0               0               0               0               
// 30ns            0               0               0               0               0               
// 35ns            1               0               0               0               0               
// 40ns            0               0               0               0               0               
// 45ns            1               0               1               0               1               
// 50ns            0               0               1               0               1               
// 55ns            1               1               0               0               1               
// 60ns            0               1               0               0               1               
// 65ns            1               1               1               0               0               
// 70ns            0               1               1               0               0               
// 75ns            1               0               0               1               1               
// 80ns            0               0               0               1               1               
// 85ns            1               1               1               0               0               
// 90ns            0               1               1               0               0               
// 95ns            1               1               1               1               1               
// 100ns           0               1               1               1               1               
// 105ns           1               1               1               1               1               
// 110ns           0               1               1               1               1               
// 115ns           1               1               0               1               0               
// 120ns           0               1               0               1               0               
// 125ns           1               0               1               1               0               
// 130ns           0               0               1               1               0               
// 135ns           1               0               0               1               1               
// 140ns           0               0               0               1               1               
// 145ns           1               0               0               0               0               
// 150ns           0               0               0               0               0               
// 155ns           1               0               0               0               0               
// 160ns           0               0               0               0               0               
// 165ns           1               0               0               0               0               
// 170ns           0               0               0               0               0               
// 175ns           1               0               0               0               0               
// 180ns           0               0               0               0               0               
// 185ns           1               0               0               0               0               
// 190ns           0               0               0               0               0        

module top_module (
	input clk,
	input a,
	input b,
	output q,
	output state
);
