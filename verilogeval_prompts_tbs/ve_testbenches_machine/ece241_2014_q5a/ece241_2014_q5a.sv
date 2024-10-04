//  The top Verilog module is a state machine that takes in three inputs (clk, areset, and x) and outputs one output (z). The module has a parameter A, B, and C which are used to define the state of the machine. The state of the machine is stored in a register with two bits.   The module has an always block that is triggered on the positive edge of the clock and the reset signal. If the reset signal is triggered, the state of the machine is set to A. If the reset signal is not triggered, the state of the machine is determined by a case statement. If the state is A, the state is set to C if x is true, otherwise it stays at A. If the state is B, the state is set to B if x is true, otherwise it is set to C. If the state is C, the state is set to B if x is true, otherwise it is set to C.   The output of the module is determined by the state of the machine. If the state is C, the output is set to true, otherwise it is set to false.

module top_module (
	input clk,
	input areset,
	input x,
	output z
);