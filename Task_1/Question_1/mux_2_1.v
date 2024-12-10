module mux_2_1(input I0,I1,sel,output out );

assign out = (sel) ? I1 :I0;

endmodule
