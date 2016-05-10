module PIPO_tb;
	reg [15:0] din;
	reg clk,rst;
	wire [15:0] dout;

PIPO pipo_ins(din,clk,rst,dout);
initial begin
	rst = 1'b0;
	clk = 1'b0;
	end
always begin
	#40 clk = ~clk;
	end
initial begin
	#50 rst = 1'b1;
	#15 din = 16'b0000000000001010;
	#95 din = 16'b0000000000001110;
	#5000 $finish;
	end
endmodule