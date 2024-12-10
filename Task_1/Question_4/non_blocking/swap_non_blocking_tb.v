module swap_non_block_tb( );

integer a ,b;

initial begin
a=5;
b=10;
#5; $display("Before swaping : a=%0d ,b=%od",a,b);

a<=b;
b<=a;

#5; $display("after swaping : a=%0d ,b=%od",a,b);

end

endmodule
