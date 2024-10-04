// The following is the state transition table for a Moore state machine with one input, one output, and four states. Implement this state machine. Include a positive edge triggered asynchronous reset that resets the FSM to state A.
 
// state | next state in=0, next state in=1 | output
// A | A, B | 0
// B | C, B | 0
// C | A, D | 0
// D | C, B | 1

module top_module (
	input clk,
	input in,
	input areset,
	output out
);
