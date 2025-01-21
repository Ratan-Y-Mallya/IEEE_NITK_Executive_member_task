module fsm101 (input in,clk,reset,output reg out);

parameter A =2'b00,B=2'b01,C=2'b10 ;

reg [1:0] present,next ;
    
always @(posedge clk or posedge reset) begin
     if (reset) begin
        present<=A;
     end else begin
        present<=next;
     end
     
end

always @(in,present) begin
  case (present)
    A: begin
      next =in? B:A;
      out = 0;
    end 
    B: begin
      next = in?B:C;
      out = 0;
    end 
    C: begin
      next = in?B:A;
      out = in?1:0;
    end 
    default: begin
      next = A;
      out = 0;
    end
  endcase
end

endmodule