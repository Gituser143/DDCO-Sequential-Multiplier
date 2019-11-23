module tb;
reg [32:0] z;
wire [15:0] a,b;


multiplier my_mul(a, b, z);

initial begin $dumpfile("tb_mul.vcd"); $dumpvars(0,tb); end

initial
begin
$monitor($time,"     ",a," *",b," = ", z);

	a = 16'b0000000011110000;
	b = 16'b0000000000000001;

	#10

	a = 16'b0000000010010101;
	b = 16'b0000000000000001;

	#10
end
endmodule
