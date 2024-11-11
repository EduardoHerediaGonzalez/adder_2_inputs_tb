`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 08:00:22 AM
// Design Name: 
// Module Name: adder_2_inputs_tb
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


module adder_2_inputs_tb;
// 	`define TEST_1
//   	`define TEST_2
//   	`define TEST_3
//   	`define TEST_4
//   	`define TEST_5
//   	`define TEST_6
//   	`define TEST_7
//   	`define TEST_8
//   	`define TEST_9
//   	`define TEST_10
//   	`define TEST_11

    localparam WIDTH = 4;
  	localparam MAX_VALUE = (2**WIDTH) - 1; // MAX_VALUE = 15
  	localparam MIDDLE_VALUE = ((MAX_VALUE - 0) / 2) + 0; // MIDDLE_VALUE = 7

    // Instantiation of the object adder_interface
    adder_2_inputs_interface #(.WIDTH(WIDTH)) adder_interface();

    // Instantiation of the object adder 
    adder_2_inputs #(.WIDTH(WIDTH)) adder(
        .result(adder_interface.result),
        .carry_out(adder_interface.carry_out),
        .a(adder_interface.a),
        .b(adder_interface.b)
    );

  `ifdef TEST_1
  /////// TEST CASE ID: adder_2_inputs_Test_1
  initial begin
    adder_interface.set_input_a_and_b_to_zero();
    #1;
    $display("a: %d", adder_interface.a);
    $display("b: %d", adder_interface.b);
    $display("Result: %d", adder_interface.result);
    $display("Carry out: %b", adder_interface.carry_out);
    $finish;
  end
  `endif
  
  `ifdef TEST_2
  /////// TEST CASE ID: adder_2_inputs_Test_2
  initial begin
    adder_interface.set_input_a_and_b_to_max_value();
    #1;
    $display("a: %d", adder_interface.a);
    $display("b: %d", adder_interface.b);
    $display("Result: %d", adder_interface.result);
    $display("Carry out: %b", adder_interface.carry_out);
    $finish;
  end
  `endif
  
  `ifdef TEST_3
  /////// TEST CASE ID: adder_2_inputs_Test_3
  initial begin
    adder_interface.set_input_a_to_value(0);
    adder_interface.set_input_b_to_middle_value;
    #1;
    $display("a: %d", adder_interface.a);
    $display("b: %d", adder_interface.b);
    $display("Result: %d", adder_interface.result);
    $display("Carry out: %b", adder_interface.carry_out);
    $finish;
  end
  `endif
  
  `ifdef TEST_4
  /////// TEST CASE ID: adder_2_inputs_Test_4
  initial begin
    adder_interface.set_input_a_to_value(1);
    adder_interface.set_input_b_to_middle_value;
    #1;
    $display("a: %d", adder_interface.a);
    $display("b: %d", adder_interface.b);
    $display("Result: %d", adder_interface.result);
    $display("Carry out: %b", adder_interface.carry_out);
    $finish;
  end
  `endif
  
  `ifdef TEST_5
  /////// TEST CASE ID: adder_2_inputs_Test_5
  initial begin
    adder_interface.set_input_a_to_value(MAX_VALUE - 1);
    adder_interface.set_input_b_to_middle_value;
    #1;
    $display("a: %d", adder_interface.a);
    $display("b: %d", adder_interface.b);
    $display("Result: %d", adder_interface.result);
    $display("Carry out: %b", adder_interface.carry_out);
    $finish;
  end
  `endif
  
  `ifdef TEST_6
  /////// TEST CASE ID: adder_2_inputs_Test_6
  initial begin
    adder_interface.set_input_a_to_value(MAX_VALUE);
    adder_interface.set_input_b_to_middle_value;
    #1;
    $display("a: %d", adder_interface.a);
    $display("b: %d", adder_interface.b);
    $display("Result: %d", adder_interface.result);
    $display("Carry out: %b", adder_interface.carry_out);
    $finish;
  end
  `endif
  
  `ifdef TEST_7
  /////// TEST CASE ID: adder_2_inputs_Test_7
  initial begin
    adder_interface.set_input_a_to_middle_value;
    adder_interface.set_input_b_to_value(0);
    #1;
    $display("a: %d", adder_interface.a);
    $display("b: %d", adder_interface.b);
    $display("Result: %d", adder_interface.result);
    $display("Carry out: %b", adder_interface.carry_out);
    $finish;
  end
  `endif
  
  `ifdef TEST_8
  /////// TEST CASE ID: adder_2_inputs_Test_8
  initial begin
    adder_interface.set_input_a_to_middle_value;
    adder_interface.set_input_b_to_value(1);
    #1;
    $display("a: %d", adder_interface.a);
    $display("b: %d", adder_interface.b);
    $display("Result: %d", adder_interface.result);
    $display("Carry out: %b", adder_interface.carry_out);
    $finish;
  end
  `endif
  
  `ifdef TEST_9
  /////// TEST CASE ID: adder_2_inputs_Test_9
  initial begin
    adder_interface.set_input_a_to_middle_value;
    adder_interface.set_input_b_to_value(MAX_VALUE - 1);
    #1;
    $display("a: %d", adder_interface.a);
    $display("b: %d", adder_interface.b);
    $display("Result: %d", adder_interface.result);
    $display("Carry out: %b", adder_interface.carry_out);
    $finish;
  end
  `endif
  
    
  `ifdef TEST_10
  /////// TEST CASE ID: adder_2_inputs_Test_10
  initial begin
    adder_interface.set_input_a_to_middle_value;
    adder_interface.set_input_b_to_value(MAX_VALUE);
    #1;
    $display("a: %d", adder_interface.a);
    $display("b: %d", adder_interface.b);
    $display("Result: %d", adder_interface.result);
    $display("Carry out: %b", adder_interface.carry_out);
    $finish;
  end
  `endif
  
   `ifdef TEST_11
  /////// TEST CASE ID: adder_2_inputs_Test_11
  initial begin
    adder_interface.set_input_a_to_middle_value;
    adder_interface.set_input_b_to_middle_value;
    #1;
    $display("a: %d", adder_interface.a);
    $display("b: %d", adder_interface.b);
    $display("Result: %d", adder_interface.result);
    $display("Carry out: %b", adder_interface.carry_out);
    $finish;
  end
  `endif

endmodule

interface adder_2_inputs_interface #(parameter WIDTH = 4) ();
    logic [(WIDTH - 1): 0] result;
    logic carry_out;
    logic [(WIDTH - 1): 0] a;
    logic [(WIDTH - 1): 0] b;
    
    localparam MAX_VALUE = (2**WIDTH) - 1;   // MAX_VALUE = 15
    localparam MIDDLE_VALUE = ((MAX_VALUE - 0) / 2) + 0;     // MIDDLE_VALUE = 7
    
    //////////////////////////////// BFM ////////////////////////////////

    // Function to set the value of the inputs "a" and "b" to zero
    function set_input_a_and_b_to_zero();
        a = 0;
        b = 0;
    endfunction

    // Function to set the value of the inputs "a" and "b" to the maximum value
    function set_input_a_and_b_to_max_value();
        a = MAX_VALUE;
        b = MAX_VALUE;
    endfunction

    // Function to set the value of the input "a" with the value "this_value" 
    function set_input_a_to_value(input logic [(WIDTH - 1): 0] this_value);
        a = this_value;
    endfunction

    // Function to set the value of the input "b" with the value "this_value" 
    function set_input_b_to_value(input logic [(WIDTH - 1): 0] this_value);
        b = this_value;
    endfunction
    
    // Function to set the value of the input "a" with the middle value of range [0, (WIDTH - 1)] 
    function set_input_a_to_middle_value();
        a = MIDDLE_VALUE;
    endfunction

    // Function to set the value of the input "b" with the middle value of range [0, (WIDTH - 1)] 
    function set_input_b_to_middle_value();
        b = MIDDLE_VALUE;
    endfunction

endinterface
