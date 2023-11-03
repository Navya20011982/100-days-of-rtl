`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:06:00 05/28/2023 
// Design Name: 
// Module Name:    demux 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module demux(i,s,y0,y1);
input i,s;
output y0,y1;
assign{y0,y1}=s?{1'b0,i}:{i,1'b0};


endmodule
/*gate level
module demux(i,s,y0,y1);
input i,s;
output y0,y1;
wire w1;
not n1(w1,s);
and a1(y0,w1,i);
and a2(y1,i,s);
endmodule
*/
/*behavioural
module demux(i,s,y0,y1);
input i,s;
output[1:0]y;
reg [1:0]y;
always@(s,i)
begin
y[0]=i;
y[1]=0;
end
else
begin
y[1]=i;
y[0]=0;
end
end
endmodule

*/

