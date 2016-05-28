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
reg [1:0] beat_intensity;
reg beat_en;
//--------------------------------------------------------------------------------------------------------//
reg reset_not;
reg ready_read, ready_read_avg;
wire [15:0] X_save;
wire [15:0] Y_save;
wire [15:0] Z_save;
reg signed [15:0] X_sum;
reg signed [15:0] Y_sum;
reg signed [15:0] Z_sum;
reg signed [15:0] X_sum_new;
reg signed [15:0] Y_sum_new;
reg signed [15:0] Z_sum_new;
reg [7:0] count_fifo_length;
reg [7:0] count_fifo_length2;
parameter fifo_length = 8'd100;
parameter fifo_length2 = 8'd40;
wire fullX, emptyX, fullY, emptyY, fullZ, emptyZ;

reg signed [31:0] sumX;
reg signed [31:0] sumY;
reg signed [31:0] sumZ;
reg signed [31:0] avgX;
reg signed [31:0] avgY;
reg signed [31:0] avgZ;

reg signed [31:0] avgX_diff;
reg signed [31:0] avgY_diff;
reg signed [31:0] avgZ_diff;

reg signed [31:0] avgX_new;
reg signed [31:0] avgY_new;
reg signed [31:0] avgZ_new;

wire signed [31:0] avgXsave;
wire signed [31:0] avgYsave;
wire signed [31:0] avgZsave;


fifo #(16, 101) u0(
//	.FIFO_DATA_WIDTH(16),
//	.FIFO_BUFFER_SIZE(101),
	.rd_clk(clk),
	.wr_clk(clk),
	.reset(reset_not),
	.rd_en(ready_read),
	.wr_en(1'b1),
	.din(X_coordinate),
	.dout(X_save),
	.full(fullX),
	.empty(emptyX)
);

fifo #(16, 101) u1(
//	.FIFO_DATA_WIDTH(16),
//	.FIFO_BUFFER_SIZE(101),
	.rd_clk(clk),
	.wr_clk(clk),
	.reset(reset_not),
	.rd_en(ready_read),
	.wr_en(1'b1),
	.din(Y_coordinate),
	.dout(Y_save),
	.full(fullY),
	.empty(emptyY)
);
fifo #(16, 101) u2(
//	.FIFO_DATA_WIDTH(16),
//	.FIFO_BUFFER_SIZE(101),
	.rd_clk(clk),
	.wr_clk(clk),
	.reset(reset_not),
	.rd_en(ready_read),
	.wr_en(1'b1),
	.din(Z_coordinate),
	.dout(Z_save),
	.full(fullZ),
	.empty(emptyZ)
);

fifo #(16, 41) u3(
//	.FIFO_DATA_WIDTH(16),
//	.FIFO_BUFFER_SIZE(41),
	.rd_clk(clk),
	.wr_clk(clk),
	.reset(reset_not),
	.rd_en(ready_read_avg),
	.wr_en(1'b1),
	.din(avgX),
	.dout(avgXsave),
	.full(full),
	.empty(empty)
);

fifo #(16, 41) u4(
//	.FIFO_DATA_WIDTH(16),
//	.FIFO_BUFFER_SIZE(41),
	.rd_clk(clk),
	.wr_clk(clk),
	.reset(reset_not),
	.rd_en(ready_read_avg),
	.wr_en(1'b1),
	.din(avgY),
	.dout(avgYsave),
	.full(full),
	.empty(empty)
);

fifo #(16, 41) u5(
//	.FIFO_DATA_WIDTH(16),
//	.FIFO_BUFFER_SIZE(41),
	.rd_clk(clk),
	.wr_clk(clk),
	.reset(reset_not),
	.rd_en(ready_read_avg),
	.wr_en(1'b1),
	.din(avgZ),
	.dout(avgZsave),
	.full(full),
	.empty(empty)
);

always @(posedge clk or negedge rst) begin
	if (! rst) begin
		// reset
		count_fifo_length <= fifo_length;
	end
	else if (count_fifo_length > 8'd0) begin
		count_fifo_length <= count_fifo_length - 8'd1;
		X_sum <= X_coordinate;
		Y_sum <= Y_coordinate;
		Z_sum <= Z_coordinate;
		sumX = sumX + {16'd0,X_sum};
		sumY = sumY + {16'd0,Y_sum};
		sumZ = sumZ + {16'd0,Z_sum};
		ready_read <= 1'b0;
	end
	else if (count_fifo_length == 8'd0 && fullX != 1'b1 && emptyX == 1'b0 && fullY != 1'b1 && emptyY == 1'b0 && fullZ != 1'b1 && emptyZ == 1'b0) begin
		ready_read <= 1'b1;
		X_sum_new <= X_coordinate;
		Y_sum_new <= Y_coordinate;
		Z_sum_new <= Z_coordinate;
		sumX = sumX - X_save + X_sum_new;
		sumY = sumY - Y_save + Y_sum_new;
		sumZ = sumZ - Z_save + Z_sum_new;
		avgX <= sumX / 32'd100;
		avgY <= sumY / 32'd100;
		avgZ <= sumZ / 32'd100;
		avgX_new <= avgX;
		avgY_new <= avgY;
		avgZ_new <= avgZ;
	end
	else begin
	end
end

always @(posedge clk or negedge rst) begin
	if (! rst) begin
		// reset
		count_fifo_length2 <= fifo_length2;
	end
	else if (count_fifo_length == 8'd0 && count_fifo_length2 > 8'd0) begin
		count_fifo_length2 <= count_fifo_length2 - 8'd1;
		ready_read_avg <= 1'b0;
	end
	else if (count_fifo_length2 == 8'd0) begin
		ready_read_avg <= 1'b1;
		avgX_diff <= avgX_new - avgXsave;
		avgY_diff <= avgY_new - avgYsave;
		avgZ_diff <= avgZ_new - avgZsave;

		if (avgX_diff >= 32'd20 * avgX_new/32'd100) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b01;
		end
		if (avgX_diff >= 32'd40 * avgX_new/32'd100) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b10;
		end	
		if (avgX_diff >= 32'd50 * avgX_new/32'd100) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b11;
		end
		if (avgY_diff >= 32'd20 * avgY_new/32'd100) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b01;
		end
		if (avgY_diff >= 32'd40 * avgY_new/32'd100) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b10;
		end	
		if (avgY_diff >= 32'd50 * avgY_new/32'd100) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b11;
		end	
		if (avgZ_diff >= 32'd20 * avgZ_new/32'd100) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b01;
		end
		if (avgZ_diff >= 32'd40 * avgZ_new/32'd100) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b10;
		end	
		if (avgZ_diff >= 32'd50 * avgZ_new / 32'd100) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b11;
		end
		else begin
			beat_en <= 1'b0;
			beat_intensity <= 2'b00;
		end
	end
	else begin
	end
end
always @(posedge clk) begin
	reset_not <= ~rst;
end
endmodule