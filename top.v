module top(
    input clk,
    input [2:0] sw,
    output [5:0] led,
    output [6:0] seg,
    output [3:0] digit
);

wire [1:0] density;
wire [3:0] time_value;
wire [3:0] count;
wire state;
wire [6:0] seg_internal;   
assign density = sw[1:0];
timer_select TS(.density(density), .time_value(time_value));
countdown_timer CT(.clk(clk), .start(time_value), .count(count));
fsm_module FSM(.clk(clk), .state(state));
seven_segment SS(.num(count), .seg(seg_internal));
assign digit = 4'b1110;
reg [5:0] led_reg;
reg [6:0] seg_reg;
always @(*) begin
    if(sw[2]) begin
        led_reg = 6'b111111;
        seg_reg = 7'b1000000; 
    end else begin
        if(state == 0)
            led_reg = 6'b001100;
        else
            led_reg = 6'b100001;
        seg_reg = seg_internal;  
    end
end

assign led = led_reg;
assign seg = seg_reg;

endmodule