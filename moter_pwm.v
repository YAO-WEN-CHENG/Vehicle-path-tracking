module moter_pwm(iclk,idir,ipwm,opwm,odir);

input 			iclk;
input		[1:0]	idir;
input 	[7:0]	ipwm;

output			opwm;
output	[1:0]	odir;
			
reg		counter;

			
always @(posedge iclk)begin
	counter <= counter-1;
end

assign opwm = (counter<ipwm)? 1'b1:1'b0;
assign odir = idir;

endmodule
