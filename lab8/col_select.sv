module col_select (
	output logic [15:0] row_lights
	,input logic [3:0] rand_col
	);
	
	always_comb begin
		case (rand_col)
			4'b0000: begin
				row_lights = 16'b1000000000000000;
			end
			4'b0001: begin
				row_lights = 16'b0100000000000000;
			end
			4'b0010: begin
				row_lights = 16'b0010000000000000;
			end
			4'b0011: begin
				row_lights = 16'b0001000000000000;
			end
			4'b0100: begin
				row_lights = 16'b0000100000000000;
			end
			4'b0101: begin
				row_lights = 16'b0000010000000000;
			end
			4'b0110: begin
				row_lights = 16'b0000001000000000;
			end
			4'b0111: begin
				row_lights = 16'b0000000100000000;
			end
			4'b1000: begin
				row_lights = 16'b0000000010000000;
			end
			4'b1001: begin
				row_lights = 16'b0000000001000000;
			end
			4'b1010: begin
				row_lights = 16'b0000000000100000;
			end
			4'b1011: begin
				row_lights = 16'b0000000000010000;
			end
			4'b1100: begin
				row_lights = 16'b0000000000001000;
			end
			4'b1101: begin
				row_lights = 16'b0000000000000100;
			end
			4'b1110: begin
				row_lights = 16'b0000000000000010;
			end
			4'b1111: begin
				row_lights = 16'b0000000000000001;
			end
		endcase
	end

endmodule  // col_select