// This is a sequential circuit. Read the simulation waveforms to determine what the circuit does, then implement it.

// time            clk             a               q               
// 0ns             0               1               x               
// 5ns             1               1               4               
// 10ns            0               1               4               
// 15ns            1               1               4               
// 20ns            0               1               4               
// 25ns            1               1               4               
// 30ns            0               1               4               
// 35ns            1               1               4               
// 40ns            0               1               4               
// 45ns            1               0               4               
// 50ns            0               0               4               
// 55ns            1               0               5               
// 60ns            0               0               5               
// 65ns            1               0               6               
// 70ns            0               0               6               
// 75ns            1               0               0               
// 80ns            0               0               0               
// 85ns            1               0               1               
// 90ns            0               0               1               

module top_module (
	input clk,
	input a, 
	output reg [2:0] q
);
