module Data_Display (
	clk,    // Clock
	rst_n,  // Asynchronous reset active low
	LCD_DATA,
	LCD_RW,
	LCD_EN,
	LCD_RS,
	scl,
	sda
	);
input clk,rst_n;
//LCD Ports...
output [7:0] LCD_DATA;
output LCD_RW,LCD_EN,LCD_RS;
//Accelerometer Ports...
output scl;
inout sda;
//One hertz clock
reg two_hertz_clk;
reg setup_i2c;
//Wire connecting individual data
wire [7:0]ACC_XH_READ;
wire [7:0]ACC_XL_READ;
wire [7:0]ACC_YH_READ;
wire [7:0]ACC_YL_READ;
wire [7:0]ACC_ZH_READ;
wire [7:0]ACC_ZL_READ;
wire [7:0]GYRO_XH_READ;
wire [7:0]GYRO_XL_READ;
wire [7:0]GYRO_YH_READ;
wire [7:0]GYRO_YL_READ;
wire [7:0]GYRO_ZH_READ;
wire [7:0]GYRO_ZL_READ;
//Concatenated 16 bit values for usage.
reg signed [15:0] X_Accel;
reg signed [15:0] Y_Accel;
reg signed [15:0] Z_Accel;
reg signed [15:0] X_Gyro;
reg signed [15:0] Y_Gyro;
reg signed [15:0] Z_Gyro;
//LCD registers and wires.
reg	[5:0] LUT_INDEX;
reg	[8:0] LUT_DATA;
reg	[5:0] mLCD_ST;
reg	[17:0] mDLY;
reg	[7:0] mLCD_DATA;
reg	mLCD_Start;
reg	mLCD_RS;
wire mLCD_Done;
//Parameters for LCD
parameter LCD_INTIAL = 0;
parameter LCD_LINE1	= 5;
parameter LCD_CH_LINE =	LCD_LINE1+16;
parameter LCD_LINE2	= LCD_LINE1+16+1;
parameter LUT_SIZE = LCD_LINE1+32+1;

wire [3:0] X_bcd0,X_bcd1,X_bcd2,X_bcd3,X_bcd4,Y_bcd0,Y_bcd1,Y_bcd2,Y_bcd3,Y_bcd4,Z_bcd0,Z_bcd1,Z_bcd2,Z_bcd3,Z_bcd4;
wire [3:0] XG_bcd0,XG_bcd1,XG_bcd2,XG_bcd3,XG_bcd4,YG_bcd0,YG_bcd1,YG_bcd2,YG_bcd3,YG_bcd4,ZG_bcd0,ZG_bcd1,ZG_bcd2,ZG_bcd3,ZG_bcd4;

reg [19: 0] cnt_10ms;

always @ (posedge clk or negedge rst_n)
begin
	if (! rst_n) 
		cnt_10ms <= 20'd0;
	else
	cnt_10ms <= cnt_10ms + 1'b1;
end 



always @(posedge clk or negedge rst_n) begin // Convert all 8 bit into 16 bit combinations
	if (~rst_n) begin // reset
		X_Accel = 16'b0;
		Y_Accel = 16'b0;
		Z_Accel = 16'b0;
		X_Gyro = 16'b0;
		Y_Gyro = 16'b0;
		Z_Gyro = 16'b0;	
	end
	else if (cnt_10ms >= 20'hffff0 && cnt_10ms <= 20'hfffff) begin
		if (ACC_XH_READ > 8'b0 || ACC_XL_READ > 8'b0|| ACC_YH_READ > 8'b0 || ACC_YL_READ > 8'b0 || ACC_ZH_READ > 8'b0 || ACC_ZL_READ > 8'b0 || GYRO_XH_READ > 8'b0 || GYRO_XL_READ > 8'b0 || GYRO_YH_READ > 8'b0 || GYRO_YL_READ > 8'b0 || GYRO_ZH_READ > 8'b0 || GYRO_ZL_READ > 8'b0 ) 
		begin
		X_Accel = {ACC_XH_READ,ACC_XL_READ};
		Y_Accel = {ACC_YH_READ,ACC_YL_READ};
		Z_Accel = {ACC_ZH_READ,ACC_ZL_READ};
		X_Gyro = {GYRO_XH_READ,GYRO_XL_READ};
		Y_Gyro = {GYRO_YH_READ,GYRO_YL_READ};
		Z_Gyro = {GYRO_ZH_READ,GYRO_ZL_READ};	
	end
end

always@(posedge clk or negedge rst_n) begin // Send data to LCD according to position
	if(!rst_n)
	begin
		LUT_INDEX	<=	0;
		mLCD_ST		<=	0;
		mDLY		<=	0;
		mLCD_Start	<=	0;
		mLCD_DATA	<=	0;
		mLCD_RS		<=	0;
	end
	else
	begin
		if(LUT_INDEX<LUT_SIZE)
		begin
			case(mLCD_ST)
				0:	begin
					mLCD_DATA	<=	LUT_DATA[7:0];
					mLCD_RS		<=	LUT_DATA[8];
					mLCD_Start	<=	1;
					mLCD_ST		<=	1;
				end
				1:	begin
					if(mLCD_Done)
					begin
						mLCD_Start	<=	0;
						mLCD_ST		<=	2;					
					end
				end
				2:	begin
					if(mDLY<18'h3FFFE)
						mDLY	<=	mDLY + 1'b1;
					else
					begin
						mDLY	<=	0;
						mLCD_ST	<=	3;
					end
				end
				3:	begin
					LUT_INDEX	<=	LUT_INDEX + 1'b1;
					mLCD_ST	<=	0;
				end
			endcase
		end
	end
end

always begin // LCD data bit map!
	case(LUT_INDEX)
	//	Initial
	LCD_INTIAL+0:	LUT_DATA	<=	9'h038;
	LCD_INTIAL+1:	LUT_DATA	<=	9'h00C;
	LCD_INTIAL+2:	LUT_DATA	<=	9'h001;
	LCD_INTIAL+3:	LUT_DATA	<=	9'h006;
	LCD_INTIAL+4:	LUT_DATA	<=	9'h080;
	//	Line 1
	LCD_LINE1+0:	LUT_DATA	<=	9'h158; // X
	LCD_LINE1+1:	LUT_DATA	<=	9'h120; //Sign
	LCD_LINE1+2:	LUT_DATA	<=	({5'h10,X_bcd4});
	LCD_LINE1+3:	LUT_DATA	<=	({5'h10,X_bcd3});
	LCD_LINE1+4:	LUT_DATA	<=	({5'h10,X_bcd2});
	LCD_LINE1+5:	LUT_DATA	<=	({5'h10,X_bcd1});
	LCD_LINE1+6:	LUT_DATA	<=	({5'h10,X_bcd0}); 
	LCD_LINE1+7:	LUT_DATA	<=	9'h159; // Y
	LCD_LINE1+8:	LUT_DATA	<=	9'h120; //Sign
	LCD_LINE1+9:	LUT_DATA	<=	({5'h10,Y_bcd4});
	LCD_LINE1+10:	LUT_DATA	<=	({5'h10,X_bcd3});
	LCD_LINE1+11:	LUT_DATA	<=	({5'h10,X_bcd2});
	LCD_LINE1+12:	LUT_DATA	<=	({5'h10,X_bcd1});
	LCD_LINE1+13:	LUT_DATA	<=	({5'h10,X_bcd0});
	LCD_LINE1+14:	LUT_DATA	<=	9'h120;
	LCD_LINE1+15:	LUT_DATA	<=	9'h120;
	//	Change Line
	LCD_CH_LINE:	LUT_DATA	<=	9'h0C0;
	//	Line 2
	LCD_LINE2+0:	LUT_DATA	<=	9'h15A;	// Z
	LCD_LINE2+1:	LUT_DATA	<=	9'h120; //Sign
	LCD_LINE2+2:	LUT_DATA	<=	({5'h10,Z_bcd4});
	LCD_LINE2+3:	LUT_DATA	<=	({5'h10,X_bcd3});
	LCD_LINE2+4:	LUT_DATA	<=	({5'h10,X_bcd2});
	LCD_LINE2+5:	LUT_DATA	<=	({5'h10,X_bcd1});
	LCD_LINE2+6:	LUT_DATA	<=	({5'h10,X_bcd0});
	LCD_LINE2+7:	LUT_DATA	<=	9'h120; // 56 61 6c 75 65 73
	LCD_LINE2+8:	LUT_DATA	<=	9'h156;
	LCD_LINE2+9:	LUT_DATA	<=	9'h161;
	LCD_LINE2+10:	LUT_DATA	<=	9'h16C;
	LCD_LINE2+11:	LUT_DATA	<=	9'h175;
	LCD_LINE2+12:	LUT_DATA	<=	9'h165;
	LCD_LINE2+13:	LUT_DATA	<=	9'h173;
	LCD_LINE2+14:	LUT_DATA	<=	9'h120;
	LCD_LINE2+15:	LUT_DATA	<=	9'h120;

//	LCD_LINE2+0:	LUT_DATA	<=	{8'b0,X_Accel[15]};
//	LCD_LINE2+1:	LUT_DATA	<=	{8'b0,X_Accel[14]};
//	LCD_LINE2+2:	LUT_DATA	<=	{8'b0,X_Accel[13]};
//	LCD_LINE2+3:	LUT_DATA	<=	{8'b0,X_Accel[12]};
//	LCD_LINE2+4:	LUT_DATA	<=	{8'b0,X_Accel[11]};
//	LCD_LINE2+5:	LUT_DATA	<=	{8'b0,X_Accel[10]};
//	LCD_LINE2+6:	LUT_DATA	<=	{8'b0,X_Accel[9]};
//	LCD_LINE2+7:	LUT_DATA	<=	{8'b0,X_Accel[8]};
//	LCD_LINE2+8:	LUT_DATA	<=	{8'b0,X_Accel[7]};
//	LCD_LINE2+9:	LUT_DATA	<=	{8'b0,X_Accel[6]};
//	LCD_LINE2+10:	LUT_DATA	<=	{8'b0,X_Accel[5]};
//	LCD_LINE2+11:	LUT_DATA	<=	{8'b0,X_Accel[4]};
//	LCD_LINE2+12:	LUT_DATA	<=	{8'b0,X_Accel[3]};
//	LCD_LINE2+13:	LUT_DATA	<=	{8'b0,X_Accel[2]};
//	LCD_LINE2+14:	LUT_DATA	<=	{8'b0,X_Accel[1]};
//	LCD_LINE2+15:	LUT_DATA	<=	{8'b0,X_Accel[0]};
	
//	LCD_INTIAL+0:	LUT_DATA	<=	9'h038;
//	LCD_INTIAL+1:	LUT_DATA	<=	9'h00C;
//	LCD_INTIAL+2:	LUT_DATA	<=	9'h001;
//	LCD_INTIAL+3:	LUT_DATA	<=	9'h006;
//	LCD_INTIAL+4:	LUT_DATA	<=	9'h080;
//	//	Line 1
//	LCD_LINE1+0:	LUT_DATA	<=	9'h141;	//	<Altera DE2 Kit>
//	LCD_LINE1+1:	LUT_DATA	<=	9'h16C;
//	LCD_LINE1+2:	LUT_DATA	<=	9'h174;
//	LCD_LINE1+3:	LUT_DATA	<=	9'h165;
//	LCD_LINE1+4:	LUT_DATA	<=	9'h172;
//	LCD_LINE1+5:	LUT_DATA	<=	9'h161;
//	LCD_LINE1+6:	LUT_DATA	<=	9'h120;
//	LCD_LINE1+7:	LUT_DATA	<=	9'h144;
//	LCD_LINE1+8:	LUT_DATA	<=	9'h145;
//	LCD_LINE1+9:	LUT_DATA	<=	9'h132;
//	LCD_LINE1+10:	LUT_DATA	<=	9'h120;
//	LCD_LINE1+11:	LUT_DATA	<=	9'h142;
//	LCD_LINE1+12:	LUT_DATA	<=	9'h16F;
//	LCD_LINE1+13:	LUT_DATA	<=	9'h161;
//	LCD_LINE1+14:	LUT_DATA	<=	9'h172;
//	LCD_LINE1+15:	LUT_DATA	<=	9'h164;
//	//	Change Line
//	LCD_CH_LINE:	LUT_DATA	<=	9'h0C0;
//	//	Line 2
//	LCD_LINE2+0:	LUT_DATA	<=	9'h14E;	//	Nice To See You!
//	LCD_LINE2+1:	LUT_DATA	<=	9'h169;
//	LCD_LINE2+2:	LUT_DATA	<=	9'h163;
//	LCD_LINE2+3:	LUT_DATA	<=	9'h165;
//	LCD_LINE2+4:	LUT_DATA	<=	9'h120;
//	LCD_LINE2+5:	LUT_DATA	<=	9'h154;
//	LCD_LINE2+6:	LUT_DATA	<=	9'h16F;
//	LCD_LINE2+7:	LUT_DATA	<=	9'h120;
//	LCD_LINE2+8:	LUT_DATA	<=	9'h153;
//	LCD_LINE2+9:	LUT_DATA	<=	9'h165;
//	LCD_LINE2+10:	LUT_DATA	<=	9'h165;
//	LCD_LINE2+11:	LUT_DATA	<=	9'h120;
//	LCD_LINE2+12:	LUT_DATA	<=	9'h159;
//	LCD_LINE2+13:	LUT_DATA	<=	9'h16F;
//	LCD_LINE2+14:	LUT_DATA	<=	9'h175;
//	LCD_LINE2+15:	LUT_DATA	<=	9'h121;
	
	default:		LUT_DATA	<=	9'dx ;
	endcase
end

LCD_Controller u0(
//    Host Side
.iDATA(mLCD_DATA),
.iRS(mLCD_RS),
.iStart(mLCD_Start),
.oDone(mLCD_Done),
.iCLK(clk),
.iRST_N(rst_n),
//    LCD Interface
.LCD_DATA(LCD_DATA),
.LCD_RW(LCD_RW),
.LCD_EN(LCD_EN),
.LCD_RS(LCD_RS)    );

binary_bcd u1(
	.clk(clk),
	.reset(rst_n),
	.binary_in({1'b0,X_Accel[14:0]}),
	.bcd0(X_bcd0),
	.bcd1(X_bcd1),
	.bcd2(X_bcd2),
	.bcd3(X_bcd3),
	.bcd4(X_bcd4)
	);

binary_bcd u2(
	.clk(clk),
	.reset(rst_n),
	.binary_in({1'b0,Y_Accel[14:0]}),
	.bcd0(Y_bcd0),
	.bcd1(Y_bcd1),
	.bcd2(Y_bcd2),
	.bcd3(Y_bcd3),
	.bcd4(Y_bcd4)
	);

binary_bcd u3(
	.clk(clk),
	.reset(rst_n),
	.binary_in({1'b0,Z_Accel[14:0]}),
	.bcd0(Z_bcd0),
	.bcd1(Z_bcd1),
	.bcd2(Z_bcd2),
	.bcd3(Z_bcd3),
	.bcd4(Z_bcd4)
	);

binary_bcd u4(
	.clk(clk),
	.reset(rst_n),
	.binary_in({1'b0,X_Gyro[14:0]}),
	.bcd0(XG_bcd0),
	.bcd1(XG_bcd1),
	.bcd2(XG_bcd2),
	.bcd3(XG_bcd3),
	.bcd4(XG_bcd4)
	);

binary_bcd u5(
	.clk(clk),
	.reset(rst_n),
	.binary_in({1'b0,Y_Gyro[14:0]}),
	.bcd0(YG_bcd0),
	.bcd1(YG_bcd1),
	.bcd2(YG_bcd2),
	.bcd3(YG_bcd3),
	.bcd4(YG_bcd4)
	);

binary_bcd u6(
	.clk(clk),
	.reset(rst_n),
	.binary_in({1'b0,Z_Gyro[14:0]}),
	.bcd0(ZG_bcd0),
	.bcd1(ZG_bcd1),
	.bcd2(ZG_bcd2),
	.bcd3(ZG_bcd3),
	.bcd4(ZG_bcd4)
	);

top u7(
	.clk(clk),
	.scl(scl),
	.sda(sda),
	.rst_n(rst_n),
	.ACC_XH_READ(ACC_XH_READ),
	.ACC_XL_READ(ACC_XL_READ),
	.ACC_YH_READ(ACC_YH_READ),
	.ACC_YL_READ(ACC_YL_READ),
	.ACC_ZH_READ(ACC_ZH_READ),
	.ACC_ZL_READ(ACC_ZL_READ),
	.GYRO_XH_READ(GYRO_XH_READ),
	.GYRO_XL_READ(GYRO_XL_READ),
	.GYRO_YH_READ(GYRO_YH_READ),
	.GYRO_YL_READ(GYRO_YL_READ),
	.GYRO_ZH_READ(GYRO_ZH_READ),
	.GYRO_ZL_READ(GYRO_ZL_READ)
	);

scale_clock u8(
	.clk_50Mhz(clk),
	.rst(rst_n),
	.clk_2Hz(two_hertz_clk)
	);
endmodule