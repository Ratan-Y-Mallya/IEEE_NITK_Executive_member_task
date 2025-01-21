module fsmcomb_tb;
     reg in, clk, reset;       // Declare testbench signals
    wire out;         // Declare output signal

    // Instantiate the DUT (Device Under Test)
  fsmcomb dut (
        .in(in),
        .clk(clk),
        .reset(reset),
        .out(out)
    );

    // Clock generation: 10 ns period
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        $dumpfile("fsm.vcd");     // Specify dump file for waveform
        $dumpvars(0, fsmcomb_tb);
        // Initialize signals
        clk = 0; 
        reset = 1; 
        in = 0;

        // Apply reset
        #10 reset = 0;

        // Apply input sequence
        #10 in = 0;
        #10 in = 1;
        #10 in = 0;
        #10 in = 1;
        #10 in = 0;
        #10 in = 1;
        #10 in = 1;
        #10 in = 0;
        #10 in = 0;
        #10 in = 1;
        #10;
        in=0;

        #20 $finish; // End simulation
    end
endmodule
