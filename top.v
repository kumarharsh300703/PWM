`timescale 1ns / 1ps

module top(
    input clk,
    output [3:0]led
    );
    
    reg [7:0] counter = 0;
    always @ (posedge clk) begin
    if (counter < 100) counter <= counter + 1;
    else counter <= 0;
    end
    
    assign led[0] = (counter < 25) ? 1:0; //duty cycle 25
    assign led[1] = (counter < 50) ? 1:0; //duty cycle 50
    assign led[2] = (counter < 75) ? 1:0; //duty cycle 75
    assign led[3] = (counter < 100) ? 1:0; //duty cycle 100
endmodule
