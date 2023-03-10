module seven_segment(iclk,inum,oseg);

input 			iclk;
input 	[1:0]	inum;
output 	[7:0]	oseg;
reg		[7:0]	seg;

always @ (posedge iclk)begin
	case (inum)
	4'h0:begin
		seg <= 8'b10111111;
	end
	4'h1:begin
		seg <= 8'b10000110;
	end
	4'h2:begin
		seg <= 8'b11011011;
	end
	4'h3:begin
		seg <= 8'b11001111;
	end
	4'h4:begin
		seg <= 8'b11100110;
	end
	4'h5:begin
		seg <= 8'b11101101;
	end
	4'h6:begin
		seg <= 8'b11111101;
	end
	4'h7:begin
		seg <= 8'b10000111;
	end
	4'h8:begin
		seg <= 8'b11111111;
	end
	4'h9:begin
		seg <= 8'b11101111;
	end
	4'ha:begin
		seg <= 8'b11110111;
	end
	4'hb:begin
		seg <= 8'b11111100;
	end
	4'hc:begin
		seg <= 8'b10111001;
	end
	4'hd:begin
		seg <= 8'b11011110;
	end
	4'he:begin
		seg <= 8'b11111001;
	end
	4'hf:begin
		seg <= 8'b11110001;
	end
	default:begin
		seg <= 8'b10111111;
	end
	endcase
end

assign oseg = ~seg;
endmodule
