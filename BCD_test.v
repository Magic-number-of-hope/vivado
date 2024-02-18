`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/17 20:33:29
// Design Name: 
// Module Name: BCD_test
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


module BCD_test(
   input a1,
   input b1,
   input c1,
   input d1,
   output a2,
   output b2,
   output c2,
   output d2
    );
    assign a2 = (a1 & (~b1) & (~c1)) | ((~a1) & b1 & d1) | ((~a1) & b1 & c1);
    assign b2 = ((~a1) & (~b1) & c1) | ((~a1) & b1 & (~c1) & (~d1)) | (d1 & (~b1) & (~c1));
    assign c2 = ((~a1) & (~d1) & (~c1)) | ((~b1) & (~d1) & (~c1)) | ((~a1) & c1 & d1);
    assign d2 = ((~a1) & (~d1)) | ((~b1) & (~d1) & (~c1));
endmodule
