module reg_8 (clock, A, B, C, out);
input clock;
input reg [7:0] A;
input reg [7:0] B;
input reg [7:0] C;
output reg [7:0] out;

bit [1:0] input_cnt = 0;
bit [7:0] A_buffer [3:0];
bit [7:0] B_buffer [3:0];
bit [7:0] C_buffer [3:0];
bit out_en = 0;
always @(posedge clock)
begin
	input_cnt <= input_cnt + 1;
	
	case (input_cnt)
	
	0:	begin	
			A_buffer[0] <= A;
			B_buffer[0] <= B;
			C_buffer[0] <= C;			
		end	
			
	1:	begin	
			A_buffer[1] <= A;
			B_buffer[1] <= B;
			C_buffer[1] <= C;
		end
		
	2:	begin	
			A_buffer[2] <= A;
			B_buffer[2] <= B;
			C_buffer[2] <= C;
		end
	
	3:	begin	
			A_buffer[3] <= A;
			B_buffer[3] <= B;
			C_buffer[3] <= C;
			
			input_cnt<= 0;
			out_en <= 1;			
		end

	endcase

end

always_comb
begin

if (out_en)
begin

	case (input_cnt)	
	0:	out = A_buffer[0]*B_buffer[0] + C_buffer[0];
				
	1:	out = A_buffer[1]*B_buffer[1] + C_buffer[1];
		
	2:	out = A_buffer[2]*B_buffer[2] + C_buffer[2];
	
	3:	out = A_buffer[3]*B_buffer[3] + C_buffer[3];	
	endcase
end

else out = 0;

end
endmodule