//-----------------------------------------------------
// ProjectName: ASIC watch 
// Description: Clock down  from external crystal to 1.0Hz
// Coder      : G.Cabo & L.Ledoux
// References :
//-----------------------------------------------------
`default_nettype none
`timescale 1 ns / 1 ps

`ifndef SYNT
    `ifdef FORMAL 
        `define ASSERTIONS
    `endif
`endif

module crystal2hz (
    input wire rst_i, // active high
    input wire clk_i, // 32.768 KHz
    output reg clk_o  // 1Hz
);

//free running counter
reg [14:0] count_int;
always @(posedge clk_i, posedge rst_i) begin : count_15bit
            if (rst_i) begin
                count_int <= 0;
            end else begin
                count_int <= count_int+1;  
            end
end

//Clock divider
always @(posedge clk_i, posedge rst_i) begin: clk_div
            if (rst_i) begin
                clk_o <= 1;
            end else begin
		// lledoux: expensive 15-bit and reduction and 15-bit comparator
		// 1 extra bit in the counter and check the msb should
		// sufficient
                if (&count_int == 1) begin // if and reduction is 1 
                    clk_o <= ~clk_o;
                end else begin
                    clk_o <= clk_o;
                end
            end
end

endmodule
