module tb;
wire [31:0] product;
reg [15:0] multiplicand,multiplier;
mul my_mul(.multiplicand(multiplicand),.multiplier(multiplier),.product(product));

//multiplier my_mul(a, b, z);
//shift my_shift(z);

initial begin $dumpfile("tb_mul.vcd"); $dumpvars(0,tb); end

initial begin
//begin $monitor(a," *",b," = ", z);
	$monitor(multiplicand,multiplier,product);
	
	multiplicand = 16'b0000000010000010;	
	multiplier = 16'b0000000000000001;
	
	#10

	multiplicand = 16'b0000000000000011;
	multiplier = 16'b0000000000000001;

	#10
	$finish;
end
endmodule
