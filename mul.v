module full_adder(a,b,cin,sum,cout);
	input a,b,cin;
	output sum,cout;
	wire s1,c1,c2,c3;
	xor(s1,a,b);
	xor(sum,cin,s1);
	and(c1,a,b);
	and(c2,b,cin);
	and(c3,a,cin);
	or(cout,c1,c2,c3);
endmodule


module and16(input wire [15:0] multiplicand, input wire x, output wire [15:0] mul2)
	and2 a0(x, multiplicand[0], mul2[0]);
	and2 a1(x, multiplicand[1], mul2[1]);
	and2 a2(x, multiplicand[2], mul2[2]);
	and2 a3(x, multiplicand[3], mul2[3]);
	and2 a4(x, multiplicand[4], mul2[4]);
	and2 a5(x, multiplicand[5], mul2[5]);
	and2 a6(x, multiplicand[6], mul2[6]);
	and2 a7(x, multiplicand[7], mul2[7]);
	and2 a8(x, multiplicand[8], mul2[8]);
	and2 a9(x, multiplicand[9], mul2[9]);
	and2 a10(x, multiplicand[10], mul2[10]);
	and2 a11(x, multiplicand[11], mul2[11]);
	and2 a12(x, multiplicand[12], mul2[12]);
	and2 a13(x, multiplicand[13], mul2[13]);
	and2 a14(x, multiplicand[14], mul2[14]);
	and2 a15(x, multiplicand[15], mul2[15]);
endmodule


module full_adder_16(input wire[15:0] multiplicand, sum_in, input wire cin, output wire[15:0] sum_out, output wire carry)
	wire c_out[14:0];
	full_adder(multiplicand[0], sum_in[0], cin, sum_out[0],c_out[0]);
	full_adder(multiplicand[1], sum_in[1], c_out[0], sum_out[1],c_out[1]);
	full_adder(multiplicand[2], sum_in[2], c_out[1], sum_out[2],c_out[2]);
	full_adder(multiplicand[3], sum_in[3], c_out[2], sum_out[3],c_out[3]);
	full_adder(multiplicand[4], sum_in[4], c_out[3], sum_out[4],c_out[4]);
	full_adder(multiplicand[5], sum_in[5], c_out[4], sum_out[5],c_out[5]);
	full_adder(multiplicand[6], sum_in[6], c_out[5], sum_out[6],c_out[6]);
	full_adder(multiplicand[7], sum_in[7], c_out[6], sum_out[7],c_out[7]);
	full_adder(multiplicand[8], sum_in[8], c_out[7], sum_out[8],c_out[8]);
	full_adder(multiplicand[9], sum_in[9], c_out[8], sum_out[9],c_out[9]);
	full_adder(multiplicand[10], sum_in[10], c_out[9], sum_out[10],c_out[10]);
	full_adder(multiplicand[11], sum_in[11], c_out[10], sum_out[11],c_out[11]);
	full_adder(multiplicand[12], sum_in[12], c_out[11], sum_out[12],c_out[12]);
	full_adder(multiplicand[13], sum_in[13], c_out[12], sum_out[13],c_out[13]);
	full_adder(multiplicand[14], sum_in[14], c_out[13], sum_out[14],c_out[14]);
	full_adder(multiplicand[15], sum_in[15], c_out[14], sum_out[15],carry);
endmodule		

	
module multiplier(input wire [15:0] multiplicand, multiplier, output wire[32:0] product)
	wire [15:0] mul2; //mul2 is output of adder
	assign prouct [15:0] = multiplier;
	
	and16 an0(multiplicand, product[0], mul2);
	full_adder_16 x0(mul2, 16'b0000000000000000, product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an1(multiplicand, product[0], mul2);
	full_adder_16 x1(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an2(multiplicand, product[0], mul2);
	full_adder_16 x2(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an3(multiplicand, product[0], mul2);
	full_adder_16 x3(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an4(multiplicand, product[0], mul2);
	full_adder_16 x4(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an5(multiplicand, product[0], mul2);
	full_adder_16 x5(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an6(multiplicand, product[0], mul2);
	full_adder_16 x6(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an7(multiplicand, product[0], mul2);
	full_adder_16 x7(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an8(multiplicand, product[0], mul2);
	full_adder_16 x8(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an9(multiplicand, product[0], mul2);
	full_adder_16 x9(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an10(multiplicand, product[0], mul2);
	full_adder_16 x10(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an11(multiplicand, product[0], mul2);
	full_adder_16 x11(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an12(multiplicand, product[0], mul2);
	full_adder_16 x12(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an13(multiplicand, product[0], mul2);
	full_adder_16 x13(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an14(multiplicand, product[0], mul2);
	full_adder_16 x14(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
	and16 an15(multiplicand, product[0], mul2);
	full_adder_16 x15(mul2, product[31:15], product[32], product[31:15], product[32]);
	product >> 1;
	
endmodule
