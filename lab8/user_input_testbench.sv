module user_input_testbench();
	logic in, out, clk, reset;
	
	user_input dut (.in, .out, .clk, .reset);
	
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	initial begin
		
		integer i;

		@(posedge clk); reset <= 1;
		@(posedge clk); reset <= 0;

		@(posedge clk); in <= 1;
		@(posedge clk); in <= 1;
		@(posedge clk); in <= 1;
		@(posedge clk); in <= 0;
		
		@(posedge clk); in <= 0;
		@(posedge clk); in <= 0;
		
		@(posedge clk); in <= 1;
		@(posedge clk); in <= 0;
		@(posedge clk); in <= 0;
		
		
		$stop;
	end
	
endmodule  // user_input_testbench