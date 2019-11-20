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
	
		
module multiplier(input wire [15:0] multiplicand, multiplier)
	wire [32:0] product;
	wire [15:0] mul2;
	prouct [15:0] = multiplier;
	and16 an1(multiplicand, product[0], mul2);
	add a2(mul2, 8'b0, product [31:15], product [32]);
	product >> 1;
	and16 an1(multiplicand, product[0], mul2);
	add a2(mul2, 8'b0, product [31:15], product [32]);
	product >> 1;
	
