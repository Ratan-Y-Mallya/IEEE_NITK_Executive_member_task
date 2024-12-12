module asyn__d_ff_tb();

 reg clk, set, D;
    wire Q,not_Q;

asyn_set_d_ff dut ( .D(D) ,.set(set),.clk(clk),.Q(Q),.not_Q(not_Q) );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        
        D = 0;
        set = 0;

        #10 set = 1; #10 set = 0;

        #10 D = 1; #10;
        #10 D = 0; #10;

        #50 $finish;
    end
endmodule
