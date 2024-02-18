`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/17 19:04:47
// Design Name: 
// Module Name: full_001
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


module full_001(
    input x,
    input y,
    input z,
    output c,
    output s
    );
   wire xy,xz,yz,nxnyz,nxynz,xnynz,xyz,m,nxny,nxnz,nynz,nxnyz,nxynz,xnynz;
   not not1(nx,x);
   not not2(ny,y);
   not not3(nz,z);
   and and1(xy,x,y);
   and and2(xz,x,z);
   and and3(yz,y,z);
   or or1(c,xy,xz,yz);
   and and4(nxnyz,nx,ny,z);
   and and5(nxynz,nx,y,nz);
   and and6(xnynz,x,ny,nz);
   and and7(xyz,x,y,z);
   or or2(s,nxnyz,nxynz,xnynz,xyz);
endmodule
