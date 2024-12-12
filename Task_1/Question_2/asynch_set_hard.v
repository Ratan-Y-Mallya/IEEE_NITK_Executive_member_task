module asynch_set_hard(input D,clk,clear,output reg Q );

wire W1,W2,W3,W4;

nand G1 (W1,D,clk);
nand G2 (W2,~D,clk);
nand G3 (W4,W1,W3,clear);
nand G4 (W3,W2,W4);

always @(posedge clk or clear) begin

Q<=W4;

end
endmodule
