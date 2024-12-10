module shift_reg_4(input [3:0]in,input areset,load,clk,ena,output reg[3:0]Q);


always @(posedge clk or areset) begin

    if(areset) Q<=0;
    else if(load && ena ) Q<=in;
    else if(load) Q<=in;
    else if(ena) Q<= {1'b0,Q[3:1]};
     
    
    end


endmodule
