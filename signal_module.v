module signal_module(
    input state,
    output reg [5:0] led
);

always @(*) begin
    if(state == 0)
        led = 6'b001100; 
    else
        led = 6'b100001; 
end

endmodule