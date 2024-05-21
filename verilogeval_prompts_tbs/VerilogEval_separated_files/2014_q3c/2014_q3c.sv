// Given the state-assigned table shown below, implement the logic functions Y[0] and z.
// Present state y[2:0] | Next state Y[2:0] x=0, Next state Y[2:0] x=1 | Output z
// 000 | 000, 001 | 0
// 001 | 001, 100 | 0
// 010 | 010, 001 | 0
// 011 | 001, 010 | 1
// 100 | 011, 100 | 1


module top_module (
	input clk,
	input x,
	input [2:0] y,
	output reg Y0,
	output reg z
);
