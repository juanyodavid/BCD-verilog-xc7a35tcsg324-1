module bcdflow(X,Y,Output);
    input [3:0]X;
    input [3:0]Y;
    output [3:0]Output;
    wire [3:0]out;
    assign out = X + Y;
    assign Output = (out > 4'b1001)? (out + 4'b0110):out;
endmodule 