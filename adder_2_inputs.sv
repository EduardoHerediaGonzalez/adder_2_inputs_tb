`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 07:41:07 AM
// Design Name: 
// Module Name: adder_2_inputs
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder_2_inputs #(parameter WIDTH = 4)(
    output [(WIDTH - 1): 0] result,
    output carry_out,
    input [(WIDTH - 1): 0] a,
    input [(WIDTH - 1): 0] b
);

assign {carry_out, result} = a + b;

endmodule
