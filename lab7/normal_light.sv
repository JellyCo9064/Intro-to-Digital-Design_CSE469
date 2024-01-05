module normal_light (
	output logic light_on
	,input logic clk, reset
	,input logic L, R, NL, NR
	);
	
	logic ps, ns;
	
	always_comb begin
		
		if (ps & (L ^ R)) ns = 0;
		else if (~ps & ((NL & R & ~L) | (NR & L & ~R))) ns = 1;
		else ns = ps;
		
		light_on = ps;
	end
	
	always_ff @(posedge clk) begin
		if (reset) ps <= 0;
		else ps <= ns;
	end
	
endmodule  // normal_light