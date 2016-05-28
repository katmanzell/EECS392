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
//--------------------------------------------------------------------------------------------------------//

reg ready_read, ready_read_avg;
wire [15:0] X_save;
wire [15:0] Y_save;
wire [15:0] Z_save;
reg [7:0] count_fifo_length;
reg [7:0] count_fifo_length2;
parameter fifo_length = 8'd100;
parameter fifo_length2 = 8'd40;
wire fullX, emptyX, fullY, emptyY, fullZ, emptyZ;

reg signed sumX [31:0];
reg signed sumY [31:0];
reg signed sumZ [31:0];
reg signed avgX [31:0];
reg signed avgY [31:0];
reg signed avgZ [31:0];

wire signed avgXsave [31:0];
wire signed avgYsave [31:0];
wire signed avgZsave [31:0];


fifo u0(
	.FIFO_DATA_WIDTH(16),
	.FIFO_BUFFER_SIZE(101),
	.rd_clk(clk),
	.wr_clk(clk),
	.reset(not rst),
	.rd_en(ready_read),
	.wr_en(1'b1),
	.din(X_coordinate),
	.dout(X_save),
	.full(fullX),
	.empty(emptyX)
);

fifo u1(
	.FIFO_DATA_WIDTH(16),
	.FIFO_BUFFER_SIZE(101),
	.rd_clk(clk),
	.wr_clk(clk),
	.reset(not rst),
	.rd_en(ready_read),
	.wr_en(1'b1),
	.din(Y_coordinate),
	.dout(Y_save),
	.full(fullY),
	.empty(emptyY)
);
fifo u2(
	.FIFO_DATA_WIDTH(16),
	.FIFO_BUFFER_SIZE(101),
	.rd_clk(clk),
	.wr_clk(clk),
	.reset(not rst),
	.rd_en(ready_read),
	.wr_en(1'b1),
	.din(Z_coordinate),
	.dout(Z_save),
	.full(fullZ),
	.empty(emptyZ)
);

fifo u3(
	.FIFO_DATA_WIDTH(16),
	.FIFO_BUFFER_SIZE(41),
	.rd_clk(clk),
	.wr_clk(clk),
	.reset(not rst),
	.rd_en(ready_read_avg),
	.wr_en(1'b1),
	.din(avgX),
	.dout(avgXsave),
	.full(full),
	.empty(empty)
);

fifo u4(
	.FIFO_DATA_WIDTH(16),
	.FIFO_BUFFER_SIZE(41),
	.rd_clk(clk),
	.wr_clk(clk),
	.reset(not rst),
	.rd_en(ready_read_avg),
	.wr_en(1'b1),
	.din(avgY),
	.dout(avgYsave),
	.full(full),
	.empty(empty)
);

fifo u5(
	.FIFO_DATA_WIDTH(16),
	.FIFO_BUFFER_SIZE(41),
	.rd_clk(clk),
	.wr_clk(clk),
	.reset(not rst),
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
		sumX = sumX + {16'd0,X_coordinate};
		sumY = sumY + {16'd0,Y_coordinate};
		sumZ = sumZ + {16'd0,Z_coordinate};
		ready_read <= 1'b0;
	end
	else if (count_fifo_length == 8'd0 && fullX != 1'b1 && emptyX == 1'b0 && fullY != 1'b1 && emptyY == 1'b0 && fullZ != 1'b1 && emptyZ == 1'b0) begin
		ready_read <= 1'b1;
		sumX = sumX - X_save + X_coordinate;
		sumY = sumY - Y_save + Y_coordinate;
		sumZ = sumZ - Z_save + Z_coordinate;
		avgX <= sumX / 32'd100;
		avgY <= sumY / 32'd100;
		avgZ <= sumZ / 32'd100;
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

		if (avgX - avgXsave >= ((32'd20 * avgX)/32'd100)) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b01;
		end
		else if (avgX - avgXsave >= ((32'd40 * avgX)/32'd100)) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b10;
		end	
		else if (avgX - avgXsave >= ((32'd50 * avgX)/32'd100)) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b11;
		end
		else if (avgY - avgYsave >= ((32'd20 * avgY)/32'd100)) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b01;
		end
		else if (avgY - avgYsave >= ((32'd40 * avgY)/32'd100)) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b10;
		end	
		else if (avgY - avgYsave >= ((32'd50 * avgY)/32'd100)) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b11;
		end	
		else if (avgZ - avgZsave >= ((32'd20 * avgZ)/32'd100)) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b01;
		end
		else if (avgZ - avgZsave >= ((32'd40 * avgZ)/32'd100)) begin // Greater than 20% of average.
			beat_en <= 1'b1;
			beat_intensity <= 2'b10;
		end	
		else if (avgZ - avgZsave >= ((32'd50 * avgZ)/32'd100)) begin // Greater than 20% of average.
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

endmodule
