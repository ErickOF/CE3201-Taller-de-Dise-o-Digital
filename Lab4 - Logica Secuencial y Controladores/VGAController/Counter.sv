module Counter (input clk, reset,
                output logic [9:0] Q);

always @(posedge clk or posedge reset)
begin
    if (reset) Q <= 9'b0;
    else Q <= Q + 9'b1;
end

endmodule // Counter