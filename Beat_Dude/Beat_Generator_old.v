module Beat_Generator (
	clk,    // Clock
	//enable,
	rst,  // Asynchronous reset active low
	X_coordinate, //16 bit input from accelerometer
	Y_coordinate, //16 bit input from accelerometer
	Z_coordinate, //16 bit input from accelerometer
	beat_en, // Output if beat detected
	beat_intensity	 // Output of the beat intensity detected
	);
input clk, rst;    // Clock, Asynchronous reset active low
input [15:0] X_coordinate, Y_coordinate, Z_coordinate;//16 bit input from accelerometer
output beat_en; // Output if beat detected
output [1:0] beat_intensity;	 // Output of the beat intensity detected
//--------------------------------------------------------------------------------------------------------
wire signed [15:0] X_save1, X_save2, X_save3, X_save4, X_save5, X_save6, X_save7, X_save8, X_save9, X_save10; //Wire to send one instance of X_coordinate data recieved at clk
wire signed [15:0] Y_save1, Y_save2, Y_save3, Y_save4, Y_save5, Y_save6, Y_save7, Y_save8, Y_save9, Y_save10; //Wire to send one instance of Y_coordinate data recieved at clk
wire signed [15:0] Z_save1, Z_save2, Z_save3, Z_save4, Z_save5, Z_save6, Z_save7, Z_save8, Z_save9, Z_save10; //Wire to send one instance of Z_coordinate data recieved at clk
wire [159:0] X_save;
wire [159:0] Y_save;
wire [159:0] Z_save;

//parameter [15:0] level_1, level_2, level_3;
reg [1:0] beat_intensity;
reg beat_en;
//--------------------------------------------------------------------------------------------------------
parameter	level_1 = 16'd3000; // 1000 - level to compare difference.
parameter	level_2 = 16'd4500; //Binary 30 - level to compare difference.
parameter	level_3 = 16'd6500; //Binary 50 - level to compare difference.

reg signed averageX, averageY, averageZ [15:0];

//------------------------------------------Instantiantion of PIPO-------------------------------------------
PIPO u0 (
	.clk (clk),
	.rst (rst),
	.din (X_coordinate),
	.dout (X_save)
	);

PIPO u1 (
	.clk (clk),
	.rst (rst),
	.din (Y_coordinate),
	.dout (Y_save)
	);

PIPO u2 (
	.clk (clk),
	.rst (rst),
	.din (Z_coordinate),
	.dout (Z_save)
	);
//------------------------------------------------Always block for subtraction logic-------------------------
always @(posedge clk or negedge rst) begin
	if (! rst) begin
		beat_en <= 1'b0;
		beat_intensity <= 2'b00;		// reset		
	end
	else begin
		X_save1 <= X_save[15:0];
		X_save2 <= X_save[31:16];
		X_save3 <= X_save[47:32];
		X_save4 <= X_save[63:48];
		X_save5 <= X_save[79:64];
		X_save6 <= X_save[95:80];
		X_save7 <= X_save[111:96];
		X_save8 <= X_save[127:112];
		X_save9 <= X_save[143:128];
		X_save10 <= X_save[159:144];

//----------------------------------------------------------//

		Y_save1 <= Y_save[15:0];
		Y_save2 <= Y_save[31:16];
		Y_save3 <= Y_save[47:32];
		Y_save4 <= Y_save[63:48];
		Y_save5 <= Y_save[79:64];
		Y_save6 <= Y_save[95:80];
		Y_save7 <= Y_save[111:96];
		Y_save8 <= Y_save[127:112];
		Y_save9 <= Y_save[143:128];
		Y_save10 <= Y_save[159:144];

//----------------------------------------------------------//

		Z_save1 <= Z_save[15:0];
		Z_save2 <= Z_save[31:16];
		Z_save3 <= Z_save[47:32];
		Z_save4 <= Z_save[63:48];
		Z_save5 <= Z_save[79:64];
		Z_save6 <= Z_save[95:80];
		Z_save7 <= Z_save[111:96];
		Z_save8 <= Z_save[127:112];
		Z_save9 <= Z_save[143:128];
		Z_save10 <= Z_save[159:144];

//----------------------------------------------------------//

		averageX <= (X_save1+X_save2+X_save3+X_save4+X_save5+X_save6+X_save7+X_save8+X_save9+X_save10)/(16'd10);
		averageY <= (Y_save1+Y_save2+Y_save3+Y_save4+Y_save5+Y_save6+Y_save7+Y_save8+Y_save9+Y_save10)/(16'd10);
		averageZ <= (Z_save1+Z_save2+Z_save3+Z_save4+Z_save5+Z_save6+Z_save7+Z_save8+Z_save9+Z_save10)/(16'd10);

		
	// /* code */
	// else if(X_coordinate > 16'd0 && Y_coordinate > 16'd0 && Z_coordinate > 16'd0) begin
	// 	/* code */
	
	// 	if (X_coordinate - X_save > level_3 || Y_coordinate - Y_save > level_3 || Z_coordinate - Z_save > level_3) begin
	// 		beat_en <= 1'b1;
	// 		//#40 beat_en <= 1'b0;
	// 		beat_intensity <= 2'b11;	
	// 	end
	// 	else if (X_coordinate - X_save > level_2 && X_coordinate - X_save <= level_3 || Y_coordinate - Y_save > level_2 && Y_coordinate - Y_save <= level_3 || Z_coordinate - Z_save > level_2 && Z_coordinate - Z_save <= level_3) begin
	// 		beat_en <= 1'b1;
	// 		//#40 beat_en <= 1'b0;
	// 		beat_intensity <= 2'b10;	
	// 	end
	// 	else if (X_coordinate - X_save > level_1 && X_coordinate - X_save <= level_2  || Y_coordinate - Y_save > level_1 && Y_coordinate - Y_save <= level_2 || Z_coordinate - Z_save > level_1 && Z_coordinate - Z_save <= level_2) begin
	// 		beat_en <= 1'b1;
	// 		//#40 beat_en <= 1'b0;
	// 		beat_intensity <= 2'b01;	
	// 	end
	// 	else begin
	// 		beat_en <= 1'b0;
	// 		beat_intensity <= 2'b00;
	// 	end
	// end
	
	// else begin
	// 	beat_en <= 1'b0;
	// 	beat_intensity <= 2'b00;
	// end
end
endmodule