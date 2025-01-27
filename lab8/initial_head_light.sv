module initial_head_light (
	output logic green_light_on, head
	,input logic left, up, right, down
	,input logic [7:0] length
	,input logic [1:0] dir
	,input logic clk, reset
	);
	
	typedef enum logic [2:0]
	{
		e_off = 3'b000
		,e_head = 3'b100
		// ,e_apple = 3'b001
		,e_countdown = 3'b010
		,e_collision = 3'b111
	} state_e;
	
	state_e state_n, state_r;
	
	logic [7:0] count;
	counter256 counter (.count, .start_val(length), .enable(state_n == e_head), .clk, .reset);
	
	always_comb begin
	
		green_light_on = (state_r == e_head | state_r == e_countdown);
		head = (state_r == e_head);
	
		if (state_r == e_head) begin
			// HEAD -> COUNTDOWN
			state_n = e_countdown;
		end else if (state_r == e_countdown & count == 8'b00000001) begin
			// COUNTDOWN -> OFF
			state_n = e_off;
		end else begin
			// COUNTDOWN
			state_n = state_r;
		end
		
		// OFF -> HEAD or
		// COUNTDOWN -> COLLISION
		case(dir)
			// LEFT
			2'b00: begin
				if (right) begin
					if (green_light_on) begin
						state_n = e_collision;
					end else begin
						state_n = e_head;
					end
				end else begin
					state_n = state_n;
				end
			end
			
			// UP
			2'b01: begin
				if (down) begin
					if (green_light_on) begin
						state_n = e_collision;
					end else begin
						state_n = e_head;
					end
				end else begin
					state_n = state_n;
				end
			end
			
			// RIGHT
			2'b10: begin
				if (left) begin
					if (green_light_on) begin
						state_n = e_collision;
					end else begin
						state_n = e_head;
					end
				end else begin
					state_n = state_n;
				end
			end
			
			// DOWN
			2'b11: begin
				if (up) begin
					if (green_light_on) begin
						state_n = e_collision;
					end else begin
						state_n = e_head;
					end
				end else begin
					state_n = state_n;
				end
			end
			
		endcase
		
		if (reset) begin
			state_n = e_head;
			green_light_on = 1'b1;
			count = 8'b00000011;
		end else begin
			state_n = state_n;
			green_light_on = green_light_on;
			count = count;
		end
		
	end
	
	always_ff @(posedge clk) begin
		if (reset) begin
			state_r <= e_head;
		end else begin
			state_r <= state_n;
		end
	end
	
endmodule  // initial_head_light