module digitaldice (
    input clk,             
    input reset,          
    input roll,            
    output reg [2:0] dice  
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        dice <= 3'b001;  // Reset to 1
    end else if (roll) begin
        dice <= (dice == 3'b110) ? 3'b001 : dice + 3'b001;  
    end
end

endmodule
