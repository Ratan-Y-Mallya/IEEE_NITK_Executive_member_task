module fsm_comb_tb;

reg clk, reset, in;
wire out;


fsm_101x uut (
    .clk(clk),
    .reset(reset),
    .in(in),
    .out(out)
);


initial begin
    clk = 0;
    forever #5 clk = ~clk; 
end

initial begin
    
    reset = 1; in = 0;
    #10 reset = 0;

    #10 in = 0;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 0;
    #10 in = 0;
    #10 in = 1;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 0;

    
     $finish;
end



endmodule
