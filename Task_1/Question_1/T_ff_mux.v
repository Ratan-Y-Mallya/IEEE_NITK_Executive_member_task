module T_ff_mux(input T,clk,output reg Q=1'b1  );

wire W1;

mux_2_1 G1(Q,~Q,T,W1);

always @(posedge clk) begin

  Q<=W1;

end

endmodule

