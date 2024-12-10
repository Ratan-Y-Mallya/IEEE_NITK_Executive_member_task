module overflow(input [7:0] a,b,output reg  [7:0] sum ,output reg overflow  );
wire sign_over;

assign sign_over = (a[7]^b[7]);



always@(*) begin

    sum=a+b;
    
    if(sign_over==0)begin
    
        if(a[7] == sum[7]) overflow=0;
        else overflow=1;
        
        end
end
endmodule
