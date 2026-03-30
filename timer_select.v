module timer_select(
    input [1:0] density,
    output reg [3:0] time_value
);

always @(*) begin
    case(density)
        2'b00: time_value = 5; 
        2'b11: time_value = 9; 
        default: time_value = 7;
    endcase
end

endmodule