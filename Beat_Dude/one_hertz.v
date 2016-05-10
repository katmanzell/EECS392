module one_hertz (clk, onehertz);
  input clk;            // synthesis attribute PERIOD clk "50 MHz"
  reg [25:0] count = 0;
  output reg onehertz = 0;   // one pulse per second

always @ (posedge clk) begin
	onehertz <= (count == 50000000 - 2);
    count <= onehertz ? 0 : count + 1;
end
endmodule