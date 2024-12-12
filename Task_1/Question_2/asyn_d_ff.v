module asyn_d_ff(input D ,clr,clk,output reg Q,not_Q );

    always@(posedge clk or  clr) begin
     if(clr) begin
     Q<=0;
     not_Q<=1;
     end
     else begin
     Q<=D;
     not_Q<=~D;
     end
         
    end
endmodule
