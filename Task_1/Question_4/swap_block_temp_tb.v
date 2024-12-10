module swap_block_temp_tb( );

integer a ,b, temp ;

initial begin
a=5;
b=10;
#5; $display("Before swaping : a=%0d ,b=%od",a,b);


temp = a;
a=b;
b=temp;
#5; $display("after swaping : a=%0d ,b=%od",a,b);

end

endmodule
