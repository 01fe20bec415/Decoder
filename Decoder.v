module decoder(in,out);

input[2:0]in;
output[7:0]out;
reg [7:0]out;

always@(in)
case(in)
3'b000:out=8'b000000001;
3'b001:out=8'b000000010;
3'b010:out=8'b000000100;
3'b011:out=8'b000001000;
3'b100:out=8'b000010000;
3'b101:out=8'b000100000;
3'b110:out=8'b001000000;
3'b111:out=8'b010000000;


   default : out = 8'b00000000;
 endcase

endmodule

//test bench

module decodertest;
reg[2:0]in;
wire[7:0]out;

decoder uut(.in(in),.out(out));

initial begin
$monitor("in =%b out =%b",in,out);
in=3'b000; #100;
in=3'b001; #100;
in=3'b010; #100;
in=3'b011; #100;
in=3'b100; #100;
in=3'b101; #100;
in=3'b110; #100;
in=3'b111; #100;
end
endmodule 
