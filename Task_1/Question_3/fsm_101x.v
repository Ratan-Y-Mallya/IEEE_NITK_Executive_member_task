module fsm_101x(input clk, reset, in, output reg out);

parameter A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011,E=3'b100;
reg [2:0] cur_state, next_state;

always @(posedge clk or posedge reset) begin
    if (reset)
        cur_state <= A;
    else
        cur_state <= next_state;
end

always @(cur_state, in) begin
    case (cur_state)
        A: begin
            out = 0;
            next_state = in ? B : A;
        end
        B: begin
            out = 0;
            next_state = in ? B : C;
        end
        C: begin
            out = 0;
            next_state = in ? D : A;
        end
        D: begin
            out =  1; 
            next_state = E;
        end
         E: begin
            out =  1; 
            next_state = in? B : A;
        end
        default: begin
            out = 0;
            next_state = A;
        end
    endcase
end

endmodule
