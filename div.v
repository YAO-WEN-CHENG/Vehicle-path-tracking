module div (iclk,oclk);

input			iclk;
output reg	oclk;
parameter	iclk_value=50000000,
				hz = 10000;
reg [31:0]	rcnt;


always@(posedge iclk)begin
	if (rcnt >= ((iclk_value/(hz*2))-1))begin
		oclk<= ~oclk;
		rcnt <= 0;		
	end
	else begin
		oclk<= oclk;
		rcnt<= rcnt+1;
	end	
end

endmodule 
