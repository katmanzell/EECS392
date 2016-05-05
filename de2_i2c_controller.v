/*

I2C Controller Module
Usage: controls the 2-bus I2C module

*/

module de2_i2c_controller (
  CLOCK,
  I2C_SCLK, // I2C CLOCK
  I2C_SDAT, // I2C DATA
  I2C_DATA, // DATA:[SLAVE_ADDR,SUB_ADDR]
  GO,       // GO transfor
  STOP,      // END transfor 
  //W_R 	
  ACK,      // ACK
  RESET,
  accel,
  // TEST
  SD_COUNTER,
  SDO
);

input  CLOCK;
input  [14:0] I2C_DATA;  
input  GO;
input  RESET;   
//input  W_R; doing write protocol, already hardcodes changes in this
inout  I2C_SDAT;        
output I2C_SCLK;
output STOP;     
output ACK;
output [7:0] accel; //we need to make fake data for now

// TEST
output [5:0] SD_COUNTER;
output SDO;

reg SDO;
reg SCLK;
reg STOP;
reg [14:0] SD;
reg [5:0] SD_COUNTER;
reg [7:0] accel;

//wire I2C_SCLK = SCLK | (((SD_COUNTER >= 4) & (SD_COUNTER <= 30))? ~CLOCK : 0);
wire I2C_SCLK = SCLK | (((SD_COUNTER >= 4) & (SD_COUNTER <= 41))? ~CLOCK : 0);
wire I2C_SDAT = SDO ? 1'bz : 0;  //pull up resistor

reg ACK1, ACK2, ACK3;
wire ACK = ACK1 | ACK2 | ACK3;


//--I2C COUNTER

always @(negedge RESET or posedge CLOCK)
begin
  if (!RESET)
    SD_COUNTER = 6'b111111;
  else
    begin
      if (GO == 0) 
        SD_COUNTER = 0;
      else 
        if (SD_COUNTER < 6'b111111)
          SD_COUNTER = SD_COUNTER + 1;    
    end
end

always @(negedge RESET or posedge CLOCK )
begin
  if (!RESET)
    begin
      accel = 8'b00000000;
      SCLK = 1;
      SDO = 1;
      ACK1 = 0;
      ACK2 = 0;
      ACK3 = 0;
      STOP = 1;
    end
else
  case (SD_COUNTER)
  6'd0  : begin ACK1 = 0; ACK2 = 0; ACK3 = 0; STOP = 0; SDO = 1; SCLK = 1; end

  // Start
  6'd1  : begin SD = I2C_DATA; SDO = 0; end
  6'd2  : SCLK = 0;

  // Slave Address
  6'd3  : SDO = SD[14];
  6'd4  : SDO = SD[13];
  6'd5  : SDO = SD[12];
  6'd6  : SDO = SD[11];
  6'd7  : SDO = SD[10];
  6'd8  : SDO = SD[9];
  6'd9  : SDO = SD[8];
  6'd10 : SDO = 1'b0;   //WRITE 
  6'd11 : SDO = 1'b1;   //ACK

  // Sub-address
  6'd12  : begin SDO = SD[7]; ACK1 = I2C_SDAT; end
  6'd13  : SDO = SD[6];
  6'd14  : SDO = SD[5];
  6'd15  : SDO = SD[4];
  6'd16  : SDO = SD[3];
  6'd17  : SDO = SD[2];
  6'd18  : SDO = SD[1];
  6'd19  : SDO = SD[0];
  6'd20  : SDO = 1'b1; // ACK

  // Start Again
  6'd21  : begin SD = I2C_DATA; SDO = 0; ACK2 = I2C_SDAT; end
  6'd22  : SCLK = 0;

  // Slave Address Again
  6'd23  : SDO = SD[14];
  6'd24  : SDO = SD[13];
  6'd25  : SDO = SD[12];
  6'd26  : SDO = SD[11];
  6'd27  : SDO = SD[10];
  6'd28  : SDO = SD[9];
  6'd29  : SDO = SD[8];
  6'd30 : SDO = 1'b1;   // READ
  6'd31 : SDO = 1'b1;   //ACK

  // Data Receive
  6'd32  : begin accel[7] = I2C_SDAT;  ACK3 = I2C_SDAT; end //= SD[7];
  6'd33  : accel[6] = I2C_SDAT;// = SD[6];
  6'd34  : accel[5] = I2C_SDAT;// = SD[5];
  6'd35  : accel[4] = I2C_SDAT;// = SD[4];
  6'd36  : accel[3] = I2C_SDAT;// = SD[3];
  6'd37  : accel[2] = I2C_SDAT;// = SD[2];
  6'd38  : accel[1] = I2C_SDAT;// = SD[1];
  6'd39  : accel[0] = I2C_SDAT;// = SD[0];
  6'd40  : SDO = 1'b0;  // NACK
        
  // Stop
  6'd41 : begin SDO = 1'b0; SCLK = 1'b0; ACK3 = I2C_SDAT; end
  6'd42 : SCLK = 1'b1; 
  6'd43 : begin SDO = 1'b1; STOP = 1; end
  endcase
end

endmodule
