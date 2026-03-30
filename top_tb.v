`timescale 1ns/1ps
module top_tb;
reg clk;
reg [2:0] sw;
wire [5:0] led;
wire [6:0] seg;
wire [3:0] digit;
top uut (
    .clk(clk),
    .sw(sw),
    .led(led),
    .seg(seg),
    .digit(digit)
);
always #5 clk = ~clk;

initial begin
    clk = 0;
    sw = 3'b000;
    #200;
    sw = 3'b010;
    #200;
    sw = 3'b011;
    #200;
    sw = 3'b100;
    #200;
    sw = 3'b000;
    #200;
    $stop;
end

endmodule