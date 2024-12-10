module shift_reg_4_tb();
 reg clk;
    reg areset;
    reg load;
    reg ena;
    reg [3:0] in;
    wire [3:0] Q;

    shift_reg_4 uut (   in, areset,load,clk,ena,Q    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        areset = 0;
        load = 0;
        ena = 0;
        in = 4'b0000;

        #10 areset = 1;
        #10 areset = 0;

        #10 load = 1; in = 4'b1010;
        #10 load = 0;

        #10 ena = 1;
        #20 ena = 0;

        #10 load = 1; in = 4'b1100; ena = 1;
        #10 load = 0;

        #20 $finish;
    end

endmodule
