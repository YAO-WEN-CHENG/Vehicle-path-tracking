module controller_2 (	iclk,
							isen,
							istart,
							oL_spd,
							oR_spd,
							oL_dir,
							oR_dir,
							osen,
							dir_light);

input			iclk;
input [3:0]	isen;
input 		istart;

reg 			startreg=0;
reg	[32:0]warning;

output reg 	[7:0]oL_spd,oR_spd;
output reg 	[1:0]oL_dir,oR_dir;
output 		[3:0]osen;
output reg 	[2:0]dir_light;

always @(posedge istart)begin
	if (startreg == 0)begin
		startreg <= 1;
	end
	else if (startreg ==1)begin
		startreg <= 0;
	end
end

always @ (posedge iclk)begin
	if (startreg==1 && warning<= 30000)begin
		case(isen)
		4'b0000:begin
			oL_spd<= 8'h02;
			oR_spd<= 8'h02;
			oL_dir<= 2'b01;
			oR_dir<= 2'b01;
			dir_light <=2'b00;
		end
		4'b0001:begin
			oL_spd<= 8'haa;
			oR_spd<= 8'hcc;
			oL_dir<= 2'b01;
			oR_dir<= 2'b10;
			dir_light <=2'b01;
		end
		4'b0010:begin
			oL_spd<= 8'h02;
			oR_spd<= 8'h01;
			oL_dir<= 2'b01;
			oR_dir<= 2'b01;
			dir_light <=2'b00;
		end
		4'b0011:begin
			oL_spd<= 8'haa;
			oR_spd<= 8'hcc;
			oL_dir<= 2'b01;
			oR_dir<= 2'b10;
			dir_light <=2'b01;
		end
		4'b0100:begin
			oL_spd<= 8'h01;
			oR_spd<= 8'h02;
			oL_dir<= 2'b01;
			oR_dir<= 2'b01;
			dir_light <=2'b00;
		end
		4'b0101:begin
			oL_spd<= 8'haa;
			oR_spd<= 8'hcc;
			oL_dir<= 2'b01;
			oR_dir<= 2'b10;
			dir_light <=2'b01;
		end
		4'b0110:begin
			oL_spd<= 8'h02;
			oR_spd<= 8'h02;
			oL_dir<= 2'b01;
			oR_dir<= 2'b01;
			dir_light <=2'b00;
		end
		4'b0111:begin
			oL_spd<= 8'haa;
			oR_spd<= 8'hcc;
			oL_dir<= 2'b01;
			oR_dir<= 2'b10;
			dir_light <=2'b01;
		end
		4'b1000:begin
			oL_spd<= 8'hcc;
			oR_spd<= 8'haa;
			oL_dir<= 2'b10;
			oR_dir<= 2'b01;
			dir_light <=2'b10;
		end
		4'b1001:begin
			oL_spd<= 8'h00;
			oR_spd<= 8'h00;
			oL_dir<= 2'b00;
			oR_dir<= 2'b00;
			dir_light <=2'b11;
		end
		4'b1010:begin
			oL_spd<= 8'hcc;
			oR_spd<= 8'haa;
			oL_dir<= 2'b10;
			oR_dir<= 2'b01;
			dir_light <=2'b10;
		end
		4'b1011:begin
			oL_spd<= 8'haa;
			oR_spd<= 8'hcc;
			oL_dir<= 2'b01;
			oR_dir<= 2'b10;
			dir_light <=2'b01;
		end
		4'b1100:begin
			oL_spd<= 8'hcc;
			oR_spd<= 8'haa;
			oL_dir<= 2'b10;
			oR_dir<= 2'b01;
			dir_light <=2'b10;
		end
		4'b1101:begin
			oL_spd<= 8'hcc;
			oR_spd<= 8'haa;
			oL_dir<= 2'b10;
			oR_dir<= 2'b01;
			dir_light <=2'b10;
		end
		4'b1110:begin
			oL_spd<= 8'hcc;
			oR_spd<= 8'haa;
			oL_dir<= 2'b10;
			oR_dir<= 2'b01;
			dir_light <=2'b10;
		end
		4'b1111:begin
			oL_spd<= 8'h00;
			oR_spd<= 8'h00;
			oL_dir<= 2'b00;
			oR_dir<= 2'b00;
			dir_light <=2'b11;
		end
		default:begin
			oL_spd<= 8'h00;
			oR_spd<= 8'h00;
			oL_dir<= 2'b00;
			oR_dir<= 2'b00;
		end
		endcase
	end
	else if (startreg==0)begin
		oL_spd<= 8'h00;
		oR_spd<= 8'h00;
		oL_dir<= 2'b00;
		oR_dir<= 2'b00;
		warning <= 0;
	end
	else begin
		oL_spd<= 8'h00;
		oR_spd<= 8'h00;
		oL_dir<= 2'b00;
		oR_dir<= 2'b00;
		warning <= 0;
	end
end

assign osen = isen;
endmodule

