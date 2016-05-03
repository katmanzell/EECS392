module Beat_Generator_TB;
	reg clk, rst;
	wire beat_en;
	wire [1:0] Level; // Wire to check output of intensity
	reg [15:0] X_save; //Register to send X_coordinate data at clk
	reg [15:0] Y_save; //Register to send Y_coordinate data at clk
	reg [15:0] Z_save; //Register to send Z_coordinate data at clk

	Beat_Generator u0 (
	.clk(clk),    // Clock
	.rst(rst),  // Asynchronous reset active low
	.X_coordinate (X_save),
	.Y_coordinate (Y_save),
	.Z_coordinate (Z_save),
	.beat_en (beat_en),
	.beat_intensity	(Level)
	);

//initial begin
//	clk = 0;
//	rst = 0;
//	X_save = 16'bZ;
//	Y_save = 16'bZ;
//	Z_save = 16'bZ;
//end
initial begin
	rst = 1'b0;
	clk = 1'b0;
	end

always begin
	#40 clk = ~clk;
	end
initial  begin
	$dumpfile ("Beat_Generator.vcd");
	$dumpvars;
end

initial  begin
	$display("\t\ttime,\tclk,\trst,	  X,	  Y,\tZ,\tBeat,\tIntensity");
	$monitor("%d,\t%b,\t\t\t%b,\t%d,\t%d,\t%d,\t\t%b,\t%d,",$time,clk,rst,X_save,Y_save,Z_save,beat_en,Level);
end

initial begin
X_save = 16'b0000000010010110;
Y_save = 16'b0000000000000010;
Z_save = 16'b0000000000000010; // X is 150 i.e Level 1
rst = 1'b0;
#80
X_save = 16'b0000000000000010;
Y_save = 16'b0000000101110010;
Z_save = 16'b0000000000000010; // Y is 370 i.e Level 2
rst = 1'b0;
#80
X_save = 16'b0000000000000010;
Y_save = 16'b0000000000000010;
Z_save = 16'b0000001101000000; // Z is 832 i.e Level 3
rst = 1'b0;
#80
X_save = 16'b0000000010010110; // X is level 1
Y_save = 16'b0000000101110010; // Y is level 2
Z_save = 16'b0000000000000010; // Z is level 1
rst = 1'b0;
#80
X_save = 16'b0000000101110010; // X is level 2
Y_save = 16'b0000001101000000; // Y is level 3
Z_save = 16'b0000000010010110; // Z is level 1
rst = 1'b1; // reset bit is 1
//#10
//#50  $finish;
end 
endmodule