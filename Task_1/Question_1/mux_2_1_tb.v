module mux_21_TB();
wire [1:0] out;
  reg [1:0] I0, I1;
reg sel;
  MUX_21 dut ( I0, I1,sel,out);
initial begin
I0 = 2'b01;
I1 = 2'b11;
sel = 1'b1; #1;
sel = 1'b0; #1;
$stop;
end
endmodule
