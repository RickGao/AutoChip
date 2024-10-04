//  This top Verilog module is a simple 3-bit vector to 3-bit scalar converter. It has 3 inputs, vec, which is a 3-bit vector, and 5 outputs, outv, o2, o1, and o0. The outv output is a 3-bit vector that is the same as the input vector, vec. The o2, o1, and o0 outputs are 3 scalar outputs, each representing one bit of the input vector. The o2 output is the most significant bit of the input vector, vec, the o1 output is the middle bit, and the o0 output is the least significant bit. The module assigns the outv output to be the same as the vec input, and assigns the o2, o1, and o0 outputs to be the same as the bits of the vec input.

module top_module(
	input [2:0] vec, 
	output [2:0] outv,
	output o2,
	output o1,
	output o0
);
