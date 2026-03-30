module fsm_module(
    input clk,
    output reg state = 0
);

reg [25:0] delay = 0;

always @(posedge clk) begin
    delay <= delay + 1;

    if(delay == 100000000) begin
        delay <= 0;
        state <= ~state;
    end
end

endmodule