module T_ff_mux_tb( );
reg T,clk;
wire Q;

T_ff_mux dut (T,clk,Q);
initial begin

clk=0;
end

always #5 clk =~clk;

initial begin  
T=1; #13;
T=0; #13;
T=0; #13;
T=1; #13;
T=1; #13;
$finish;
end

endmodule
