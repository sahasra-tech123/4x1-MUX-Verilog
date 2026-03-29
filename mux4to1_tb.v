module mux4to1_tb;

reg [3:0] i;
reg [1:0] s;
wire y1;

// Instantiate both designs
  mux4to1_behavioral m1(i, s, y);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    i = 4'b1010;

    s = 2'b00; #10;
    s = 2'b01; #10;
    s = 2'b10; #10;
    s = 2'b11; #10;

    $finish;
end

endmodule
