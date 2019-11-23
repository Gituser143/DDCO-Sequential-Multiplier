
module tb;
wire signed [32:0] z;
reg signed [15:0] a,b;


boothmul my_booth(.a(a),.b(b),.c(z));

initial begin $dumpfile("tb_mul.vcd"); $dumpvars(0,tb); end

initial
begin
$monitor($time,"       ",a," *",b," = ", z);

a = 16'b0000000011110000;
b = 16'b0000000000000001;

#10

a = 16'b0000000010010101;
b = 16'b0000000000000001;

#10

end
endmodule
