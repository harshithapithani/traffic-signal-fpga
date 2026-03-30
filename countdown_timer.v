module countdown_timer(
    input clk,
    input [3:0] start,
    output reg [3:0] count = 0
);

reg [25:0] slow = 0;

always @(posedge clk) begin
    slow <= slow + 1;

    if(slow == 50000000) begin
        slow <= 0;

        if(count == 0)
            count <= start;
        else
            count <= count - 1;
    end
end

endmodule