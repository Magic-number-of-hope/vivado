`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/09 17:09:50
// Design Name: 
// Module Name: shift
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


module shift_4(
    input clk,
    input rst,
    input s1,
    output [3:0]q
    );
    
    D dt1(clk,rst,s1,q[0]);
    D dt2(clk,rst,q[0],q[1]);
    D dt3(clk,rst,q[1],q[2]);
    D dt4(clk,rst,q[2],q[3]);
endmodule
