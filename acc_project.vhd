	library IEEE;

	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

	entity acc_project is
		port(
		
			reset, clk_50Mhz				: IN	STD_LOGIC;
		
			--DE2LCD
			  LCD_RS, LCD_E, LCD_ON, RESET_LED, SEC_LED		: OUT	STD_LOGIC;
			  LCD_RW						: BUFFER STD_LOGIC;
			  DATA_BUS				: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			  
			--MPU
				scl: INOUT  STD_LOGIC;                    --serial clock output of i2c bus
				sda: INOUT  STD_LOGIC                    --serial data output of i2c bus
			  
		  --i2c
		--	ack_error : BUFFER STD_LOGIC;                    --flag if improper acknowledge from slave
		--	sda       : INOUT  STD_LOGIC;                    --serial data output of i2c bus
	   --   scl       : INOUT  STD_LOGIC                   --serial clock output of i2c bus
	  
		);
	end entity acc_project;
		
		
	architecture mixed of acc_project is

	component de2lcd IS
		PORT(
			 reset, clk_50Mhz				: IN	STD_LOGIC;
		    binary_data: IN    STD_LOGIC_VECTOR(7 DOWNTO 0);
			 LCD_RS, LCD_E, LCD_ON, RESET_LED, SEC_LED		: OUT	STD_LOGIC;
			 LCD_RW						: BUFFER STD_LOGIC;
			 DATA_BUS				: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
	END component de2lcd;
	
	
	component MPU is 
		PORT(
			clk: IN     STD_LOGIC;                    --system clock
			scl: INOUT  STD_LOGIC;                    --serial clock output of i2c bus
			sda: INOUT  STD_LOGIC;                    --serial data output of i2c bus
			data: OUT    STD_LOGIC_VECTOR(7 DOWNTO 0); --data read from slave
			rst_n: IN     STD_LOGIC);                    --active low reset
	end component MPU;
	
	
	component clk200Hz is
		port (
        clk_in : in  STD_LOGIC;
        reset  : in  STD_LOGIC;
        clk_out: out STD_LOGIC);
	end component clk200Hz;

--	component i2c_master IS
--	  GENERIC(
--	    input_clk : INTEGER := 50_000_000; --input clock speed from user logic in Hz
--	    bus_clk   : INTEGER := 400_000);   --speed the i2c bus (scl) will run at in Hz
--	  PORT(
--	    clk       : IN     STD_LOGIC;                    --system clock
--	    reset_n   : IN     STD_LOGIC;                    --active low reset
--	    ena       : IN     STD_LOGIC;                    --latch in command
--	    addr      : IN     STD_LOGIC_VECTOR(6 DOWNTO 0); --address of target slave
--	    rw        : IN     STD_LOGIC;                    --'0' is write, '1' is read
--	    data_wr   : IN     STD_LOGIC_VECTOR(7 DOWNTO 0); --data to write to slave
--	    busy      : OUT    STD_LOGIC;                    --indicates transaction in progress
--	    data_rd   : OUT    STD_LOGIC_VECTOR(7 DOWNTO 0); --data read from slave
--	    ack_error : BUFFER STD_LOGIC;                    --flag if improper acknowledge from slave
--	    sda       : INOUT  STD_LOGIC;                    --serial data output of i2c bus
--	    scl       : INOUT  STD_LOGIC);                   --serial clock output of i2c bus
--	END component i2c_master;


	signal send_data_rd:  STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal slow_clock: STD_LOGIC;
	
	begin

	
	clock_map: clk200Hz port map (
			clk_in => clk_50Mhz,
			reset => reset,
			clk_out => slow_clock);
	
	mpu_map: mpu port map (
			clk => slow_clock,
			scl => scl,
			sda => sda,
			data => send_data_rd,
			rst_n => reset);

	de2lcd_map : de2lcd port map (
		reset => reset, 
		clk_50Mhz => clk_50Mhz, 
		binary_data => send_data_rd,
		LCD_RS => LCD_RS,
		LCD_E => LCD_E,
		LCD_ON => LCD_ON,
		RESET_LED =>RESET_LED,
		SEC_LED =>SEC_LED,
		LCD_RW =>LCD_RW,
		DATA_BUS =>DATA_BUS);
		
		
	end architecture mixed;