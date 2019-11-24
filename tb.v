module tb;
output wire [31:0] product;
reg [15:0] multiplicand,multiplier;
mul_new my_mul(.multiplicand(16'b0000000010000010),.multiplier(16'b0000000000000100),.product(product));
//mul my_mul(.multiplicand(multiplicand),.multiplier(multiplier),.product(product)); //This doesn't work, the values are not being sent to module
//mul_new my_mul(.multiplicand(multiplicand),.multiplier(multiplier),.product(product)); // Same issue for this too
initial begin $dumpfile("tb_mul.vcd"); $dumpvars(0,tb); end

initial begin
	
	$monitor(multiplicand,multiplier,product);
	multiplicand = 16'b0000000010000010;	
	multiplier = 16'b0000000000000001;
	
	#10

	multiplicand = 16'b0000000000000011;
	multiplier = 16'b0000000000000010;

	#10
	
	$finish;
end

endmodule
