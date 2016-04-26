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
			  
		  --i2c
			ack_error : BUFFER STD_LOGIC;                    --flag if improper acknowledge from slave
			sda       : INOUT  STD_LOGIC;                    --serial data output of i2c bus
	      scl       : INOUT  STD_LOGIC                   --serial clock output of i2c bus
	  
		);
	end entity acc_project;
		
		
	architecture mixed of acc_project is

	component de2lcd IS
		PORT(reset, clk_50Mhz				: IN	STD_LOGIC;
		    binary_data: IN    STD_LOGIC_VECTOR(7 DOWNTO 0);
			 LCD_RS, LCD_E, LCD_ON, RESET_LED, SEC_LED		: OUT	STD_LOGIC;
			 LCD_RW						: BUFFER STD_LOGIC;
			 DATA_BUS				: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
	END component de2lcd;

	component i2c_master IS
	  GENERIC(
	    input_clk : INTEGER := 50_000_000; --input clock speed from user logic in Hz
	    bus_clk   : INTEGER := 400_000);   --speed the i2c bus (scl) will run at in Hz
	  PORT(
	    clk       : IN     STD_LOGIC;                    --system clock
	    reset_n   : IN     STD_LOGIC;                    --active low reset
	    ena       : IN     STD_LOGIC;                    --latch in command
	    addr      : IN     STD_LOGIC_VECTOR(6 DOWNTO 0); --address of target slave
	    rw        : IN     STD_LOGIC;                    --'0' is write, '1' is read
	    data_wr   : IN     STD_LOGIC_VECTOR(7 DOWNTO 0); --data to write to slave
	    busy      : OUT    STD_LOGIC;                    --indicates transaction in progress
	    data_rd   : OUT    STD_LOGIC_VECTOR(7 DOWNTO 0); --data read from slave
	    ack_error : BUFFER STD_LOGIC;                    --flag if improper acknowledge from slave
	    sda       : INOUT  STD_LOGIC;                    --serial data output of i2c bus
	    scl       : INOUT  STD_LOGIC);                   --serial clock output of i2c bus
	END component i2c_master;

	signal busy_temp, enable_temp: STD_LOGIC;
	signal receive_data_rd:  STD_LOGIC_VECTOR(103 DOWNTO 0); -- One big array of registers to store all kind of data!
	signal send_data_rd:  STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal data_address:     STD_LOGIC_VECTOR(6 DOWNTO 0);


	--GET DATA STATES
	type data_state is (x_top, x_bot, y_top, y_bot, z_top, z_bot, xa_top, xa_bot, ya_top, ya_bot, za_top, za_bot);
	signal current: data_state;



	begin

	Data_Handler : process(clk_50Mhz, addr, rw, data_rd-- parameters used here)


		begin

		IF reset = '1' THEN
	        state <= x_top;

		if(rising_edge(clk_50Mhz))then


	         CASE current IS
	            WHEN x_top =>
	            	if busy = '0' then -- wait for the i2c bus to tell it's not busy i.e ack in terms of datasheet.
	            		addr  => "1101000";
	            		rw => "0";
	            		-- I'm not sure if we have to check acknoledge here or busy; before proceeding.
	            		-- Once we are acknoledged we proceed further.
	            		data_wr => -- Address of the X_Top register map!
	            		--Acknoledge again.
	            		addr => "1101000";
	            		rw => "1";
	            		data_rd => receive_data_rd (103 DOWNTO 96);
	            		ena => "0";
	                    state <= x_bot;
	               ELSE
	                  	state <= x_top;
	               END IF;
	            WHEN x_bot=>
	                    if busy = '0' then -- wait for the i2c bus to tell it's not busy i.e ack in terms of datasheet.
	            		addr  => "1101000";
	            		rw => "0";
	            		-- I'm not sure if we have to check acknoledge here or busy; before proceeding.
	            		-- Once we are acknoledged we proceed further.
	            		data_wr => -- Address of the X_Bot register map!
	            		--Acknoledge again.
	            		addr => "1101000";
	            		rw => "1";
	            		data_rd => receive_data_rd (95 DOWNTO 88);
	            		ena => "0";
	                    state <= y_top;
	               ELSE
	                  	state <= x_bot;
	               END IF;
	            WHEN y_top=>
	                    if busy = '0' then -- wait for the i2c bus to tell it's not busy i.e ack in terms of datasheet.
	            		addr  => "1101000";
	            		rw => "0";
	            		-- I'm not sure if we have to check acknoledge here or busy; before proceeding.
	            		-- Once we are acknoledged we proceed further.
	            		data_wr => -- Address of the Y_top register map!
	            		--Acknoledge again.
	            		addr => "1101000";
	            		rw => "1";
	            		data_rd => receive_data_rd (87 DOWNTO 80);
	            		ena => "0";
	                    state <= y_bot;
	               ELSE
	                  	state <= y_top;
	               END IF;
	            WHEN y_bot=>
	                    if busy = '0' then -- wait for the i2c bus to tell it's not busy i.e ack in terms of datasheet.
	            		addr  => "1101000";
	            		rw => "0";
	            		-- I'm not sure if we have to check acknoledge here or busy; before proceeding.
	            		-- Once we are acknoledged we proceed further.
	            		data_wr => -- Address of the Y_bot register map!
	            		--Acknoledge again.
	            		addr => "1101000";
	            		rw => "1";
	            		data_rd => receive_data_rd (79 DOWNTO 72);
	            		ena => "0";
	                    state <= z_top;
	               ELSE
	                  	state <= y_bot;
	               END IF;
	             WHEN z_top=>
	                    if busy = '0' then -- wait for the i2c bus to tell it's not busy i.e ack in terms of datasheet.
	            		addr  => "1101000";
	            		rw => "0";
	            		-- I'm not sure if we have to check acknoledge here or busy; before proceeding.
	            		-- Once we are acknoledged we proceed further.
	            		data_wr => -- Address of the Z_top register map!
	            		--Acknoledge again.
	            		addr => "1101000";
	            		rw => "1";
	            		data_rd => receive_data_rd (71 DOWNTO 64);
	            		ena => "0";
	                    state <= z_bot;
	               ELSE
	                  	state <= z_top;
	               END IF;
	            WHEN z_bot=>
	                    if busy = '0' then -- wait for the i2c bus to tell it's not busy i.e ack in terms of datasheet.
	            		addr  => "1101000";
	            		rw => "0";
	            		-- I'm not sure if we have to check acknoledge here or busy; before proceeding.
	            		-- Once we are acknoledged we proceed further.
	            		data_wr => -- Address of the Z_Bot register map!
	            		--Acknoledge again.
	            		addr => "1101000";
	            		rw => "1";
	            		data_rd => receive_data_rd (63 DOWNTO 56);
	            		ena => "0";
	                    state <= xa_top;
	               ELSE
	                  	state <= z_bot;
	               END IF;
	            WHEN xa_top=>
	                    if busy = '0' then -- wait for the i2c bus to tell it's not busy i.e ack in terms of datasheet.
	            		addr  => "1101000";
	            		rw => "0";
	            		-- I'm not sure if we have to check acknoledge here or busy; before proceeding.
	            		-- Once we are acknoledged we proceed further.
	            		data_wr => -- Address of the Xa_top register map!
	            		--Acknoledge again.
	            		addr => "1101000";
	            		rw => "1";
	            		data_rd => receive_data_rd (55 DOWNTO 48);
	            		ena => "0";
	                    state <= xa_bot;
	               ELSE
	                  	state <= xa_top;
	               END IF;
	                WHEN xa_bot=>
	                    if busy = '0' then -- wait for the i2c bus to tell it's not busy i.e ack in terms of datasheet.
	            		addr  => "1101000";
	            		rw => "0";
	            		-- I'm not sure if we have to check acknoledge here or busy; before proceeding.
	            		-- Once we are acknoledged we proceed further.
	            		data_wr => -- Address of the xa_bot register map!
	            		--Acknoledge again.
	            		addr => "1101000";
	            		rw => "1";
	            		data_rd => receive_data_rd (47 DOWNTO 40);
	            		ena => "0";
	                    state <= ya_top;
	               ELSE
	                  	state <= xa_bot;
	               END IF;
	            WHEN ya_top=>
	                    if busy = '0' then -- wait for the i2c bus to tell it's not busy i.e ack in terms of datasheet.
	            		addr  => "1101000";
	            		rw => "0";
	            		-- I'm not sure if we have to check acknoledge here or busy; before proceeding.
	            		-- Once we are acknoledged we proceed further.
	            		data_wr => -- Address of the ya_top register map!
	            		--Acknoledge again.
	            		addr => "1101000";
	            		rw => "1";
	            		data_rd => receive_data_rd (39 DOWNTO 32);
	            		ena => "0";
	                    state <= ya_bot;
	               ELSE
	                  	state <= ya_top;
	               END IF;
	            WHEN ya_bot=>
	                    if busy = '0' then -- wait for the i2c bus to tell it's not busy i.e ack in terms of datasheet.
	            		addr  => "1101000";
	            		rw => "0";
	            		-- I'm not sure if we have to check acknoledge here or busy; before proceeding.
	            		-- Once we are acknoledged we proceed further.
	            		data_wr => -- Address of the ya_bot register map!
	            		--Acknoledge again.
	            		addr => "1101000";
	            		rw => "1";
	            		data_rd => receive_data_rd (31 DOWNTO 24);
	            		ena => "0";
	                    state <= za_top;
	               ELSE
	                  	state <= ya_bot;
	               END IF;
	            WHEN ya_bot=>
	                    if busy = '0' then -- wait for the i2c bus to tell it's not busy i.e ack in terms of datasheet.
	            		addr  => "1101000";
	            		rw => "0";
	            		-- I'm not sure if we have to check acknoledge here or busy; before proceeding.
	            		-- Once we are acknoledged we proceed further.
	            		data_wr => -- Address of the ya_bot register map!
	            		--Acknoledge again.
	            		addr => "1101000";
	            		rw => "1";
	            		data_rd => receive_data_rd (23 DOWNTO 16);
	            		ena => "0";
	                    state <= za_top;
	               ELSE
	                  	state <= ya_bot;
	               END IF;
	            WHEN za_top=>
	                    if busy = '0' then -- wait for the i2c bus to tell it's not busy i.e ack in terms of datasheet.
	            		addr  => "1101000";
	            		rw => "0";
	            		-- I'm not sure if we have to check acknoledge here or busy; before proceeding.
	            		-- Once we are acknoledged we proceed further.
	            		data_wr => -- Address of the za_top register map!
	            		--Acknoledge again.
	            		addr => "1101000";
	            		rw => "1";
	            		data_rd => receive_data_rd (15 DOWNTO 8);
	            		ena => "0";
	                    state <= za_bot;
	               ELSE
	                  	state <= za_top;
	               END IF;
	            WHEN za_bot=>
	                    if busy = '0' then -- wait for the i2c bus to tell it's not busy i.e ack in terms of datasheet.
	            		addr  => "1101000";
	            		rw => "0";
	            		-- I'm not sure if we have to check acknoledge here or busy; before proceeding.
	            		-- Once we are acknoledged we proceed further.
	            		data_wr => -- Address of the za_bot register map!
	            		--Acknoledge again.
	            		addr => "1101000";
	            		rw => "1";
	            		data_rd => receive_data_rd (7 DOWNTO 0);
	            		ena => "0";
	                    state <= x_top;
	               ELSE
	                  	state <= za_bot;
	               END IF;               
	         END CASE;

		end if;
	end process Data_Handler;
	----------------------------------------------------------------------------------

	-- Corresponding LCD display can be converted by taking in the bits from receive_data_rd's 16 bits










	------------------------------------------------------------------------------------


	---------------------------------------------------------------------------------
	i2c_master_map : i2c_master port map (
	    clk  => clk_50Mhz,     
	    reset_n => reset,
	    ena   => '1',
	    addr  => "1101000",   --  addr of slave 0x68
	    rw    => '1', --'0' is write, '1' is read
	    data_wr   => "00111100", -- not writing so don't care what is here
	    busy  => busy_temp,    
	    data_rd   => receive_data_rd, -- manipulate before send to LCD
	    ack_error =>ack_error, --LED if something is wrong
	    sda => sda,
	    scl => scl);


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
		

		
	---------------------------------------------------------------
	clocked_data_receive : process(clk_50Mhz, reset, receive_data_rd) is
	 
	variable counter : integer := 0;
	 
	 begin
	 

	  if(rising_edge(clk_50Mhz))then

	      counter := counter + 1;
		
			if(counter >= 1000000) then
			   counter := 0;
				send_data_rd <= receive_data_rd;
				
			end if;
			
	  end if;
	 
	end process clocked_data_receive;
	---------------------------------------------------------------	
		
	end architecture mixed;