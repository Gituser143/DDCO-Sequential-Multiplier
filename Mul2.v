module mul(input wire [15:0] multiplicand, multiplier, output reg [31:0] product);
	//input wire [15:0] multiplicand, multiplier;
	//output reg [31:0] product;
	wire [31:0] temp,tmp;
	assign tmp ={16'b0000000000000000,16'b0000000000000000};
	//product=32'b00000000000000000000000000000000;
	//reg [31:0] temp0,temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8;
	assign temp={16'b0000000000000000,multiplicand};
	initial begin
		product=tmp;
	//product+=temp;
	
	if(multiplier[0])
		product+=temp;
	if(multiplier[1])
		product+=temp<<1;
	if(multiplier[2])
		product+=temp<<2;
	if(multiplier[3])
		product+=temp<<3;
	if(multiplier[4])
		product+=temp<<4;
	if(multiplier[5])
		product+=temp<<5;
	if(multiplier[6])
		product+=temp<<6;
	if(multiplier[7])
		product+=temp<<7;
	if(multiplier[8])
		product+=temp<<8;
	if(multiplier[9])
		product+=temp<<9;
	if(multiplier[10])
		product+=temp<<10;
	if(multiplier[11])
		product+=temp<<11;
	if(multiplier[12])
		product+=temp<<12;
	if(multiplier[13])
		product+=temp<<13;
	if(multiplier[14])
		product+=temp<<14;
	if(multiplier[15])
		product+=temp<<15;
	end
		

	
endmodule


module mul_new(input wire [15:0] multiplicand, multiplier, output reg [31:0] product);
	//input wire [15:0] multiplicand, multiplier;
	//output reg [31:0] product;
	wire [31:0] temp,tmp;
	assign tmp ={16'b0000000000000000,multiplier};
	//product=32'b00000000000000000000000000000000;
	//reg [31:0] temp0,temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8;
	assign temp={multiplicand,16'b0000000000000000};
	initial begin
		product=tmp;
	//product+=temp;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	if(product[0])
		begin
		product+=temp;
		product=product>>1;
		end
	else
		product=product>>1;
	
	end
			
endmodule
