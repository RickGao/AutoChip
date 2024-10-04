//  This Verilog module is used to compare two input signals and generate three output signals. The first input signal is a 100-bit wide vector, and the second input signal is the same vector shifted by one bit. The module has three output signals, out_both, out_any, and out_different.   The out_both signal is generated by performing a bit-wise AND operation between the two input signals. This will result in a 99-bit wide vector, where each bit is 1 only if both the corresponding bits of the two input signals are 1.  The out_any signal is generated by performing a bit-wise OR operation between the two input signals. This will result in a 100-bit wide vector, where each bit is 1 if either of the corresponding bits of the two input signals is 1.  The out_different signal is generated by performing a bit-wise XOR operation between the two input signals. This will result in a 100-bit wide vector, where each bit is 1 only if the corresponding bits of the two input signals are different. The first bit of the out_different signal is generated by performing a bit-wise XOR operation between the first bit of the first input signal and the last bit of the second input signal.

module top_module (
	input [99:0] in,
	output [98:0] out_both,
	output [99:1] out_any,
	output [99:0] out_different
);
