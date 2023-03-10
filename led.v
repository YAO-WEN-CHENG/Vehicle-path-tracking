module led (isig,iclk,led_train);

input isig;
input iclk;
 
output	reg led_train=0;

always @ (posedge iclk)begin
	if(isig==1)begin
		led_train <= ~led_train;
	end
	else if(isig==0)begin
		led_train <= 1'b0;
	end
end

endmodule
