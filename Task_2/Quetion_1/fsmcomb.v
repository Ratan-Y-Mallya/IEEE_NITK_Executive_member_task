`include "fsm011.v"
`include "fsm101.v"
`include "fsm11x.v"


module fsmcomb (input in,clk,reset,output reg out);

// parameter A =2'b00,B=2'b01,C=2'b10 ;

// reg [1:0] present,next ;
    
// always @(posedge clk or posedge reset) begin
//      if (reset) begin
//         present<=A;
//      end else begin
//         present<=next;
//      end
     
// end

// always @(in,present) begin
//   case (present)
//     A: begin
//       next =in? B:A;
//       out = 0;
//     end 
//     B: begin
//       next = in?B:C;
//       out = in?1:0;
//     end 
//     C: begin
//       next = in?C:B;
//       out = in?1:0;
//     end 
//     default: begin
//       next = A;
//       out = 0;
//     end
//   endcase
// end
wire out1,out2,out3;

fsm101 g101 (.in(in),.clk(clk),.reset(reset),.out(out1));
fsm011 g011 (.in(in),.clk(clk),.reset(reset),.out(out2));
fsm11x g11x (.in(in),.clk(clk),.reset(reset),.out(out3));

always @(posedge clk or negedge clk ) begin
    if (reset) begin
        out<=0;
    end else begin
        out = out1 | out2 | out3 ;
    end
end

endmodule