module asynch_set_clear_hard(input D,clk,set,output  Q    );

asynch_set_hard g1 ( .D(D),.clk(clk),.clear(~set),.Q(Q) );

endmodule
