// The 7458 is a chip with four AND gates and two OR gates. Create a module in Verilog with the same functionality as the 7458 chip. It has 10 inputs and 2 outputs. You may choose to use an `assign` statement to drive each of the output wires, or you may choose to declare (four) wires for use as intermediate signals, where each internal wire is driven by the output of one of the AND gates.

// In this circuit, p1y should be the OR of two 3-input AND gates: one that ANDs p1a, p1b, and p1c, and the second that ANDs p1d, p1e, and p1f. The output p2y is the OR of two 2-input AND gates: one that ANDs p2a and p2b, and the second that ANDs p2c and p2d.

module top_module(
	input p1a, 
	input p1b, 
	input p1c, 
	input p1d,
	input p1e,
	input p1f,
	output p1y, 
	input p2a, 
	input p2b, 
	input p2c, 
	input p2d, 
	output p2y
);