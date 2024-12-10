module overflow_tb( );

 reg [7:0] a;
    reg [7:0] b;
    wire [7:0] sum;
    wire overflow;

    overflow uut (
        .a(a),
        .b(b),
        .sum(sum),
        .overflow(overflow)
    );

    initial begin
        a = 8'b00000000; b = 8'b00000000; #10;
        a = 8'b01111111; b = 8'b00000001; #10;
        a = 8'b10000000; b = 8'b10000000; #10;
        a = 8'b01111111; b = 8'b01111111; #10;
        a = 8'b11111111; b = 8'b11111111; #10;
        a = 8'b10000000; b = 8'b00000001; #10;
        a = 8'b00000001; b = 8'b11111111; #10;
        a = 8'b10000001; b = 8'b10000001; #10;
        $finish;
    end


endmodule
