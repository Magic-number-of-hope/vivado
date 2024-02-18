module circle(
    input clk,
    input rst,
    output [2:0]q
    );
    wire d0,d1,d2;
    assign d0=q[1];
    assign d1=q[2];
    assign d2=(~(q[1]&&~q[2]))&&(~q[0]);
    D dt0(clk,rst,d0,q[0]);
    D dt1(clk,rst,d1,q[1]);
    D dt2(clk,rst,d2,q[2]);
endmodule