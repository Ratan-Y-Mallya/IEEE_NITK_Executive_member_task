module tb_asynch_set_hard;
    reg D, clk, clr;
    wire Q,not_Q;

    asyn_d_ff uut (
        .D(D),
        .clr(clr),
        .clk(clk),
        .Q(Q),
        .not_Q(not_Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        D = 0; clr = 0;
        #10 D = 1;
        #10 clr = 1;
        #10 clr = 0;
        #10 D = 0;
        #20 $finish;
    end
endmodule
