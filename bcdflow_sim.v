`include "bcd.v"
module simulation();
    integer i = 0, j = 0;
    reg [3:0]A,B;
    wire [3:0]out;
    bcdflow uut(A,B,out);
    initial begin 
        $dumpfile ("flowWave.vcd");
        $dumpvars (0,simulation);
        for (i = 0; i<16 ; i = i + 1)
        begin
            A = i;
            for (j = 0; j<16; j = j + 1)
            begin
                B =j;
                #10;
            end
        end
    end
endmodule