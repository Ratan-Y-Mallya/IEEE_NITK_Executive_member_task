module asyn_set_d_ff(input D ,set,clk,output   Q ,not_Q  );

asyn_d_ff g1 ( .D(~D) ,.clr(set),.clk(clk),.Q(not_Q),.not_Q(Q) );
  
endmodule
