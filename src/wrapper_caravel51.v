//-----------------------------------------------------
// ProjectName: wrapper for caravel step 5.1
// Description: Top level of the design
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

module wrapper_caravel51 (
`ifdef USE_POWER_PINS
	input wire vccd1,	// User area 1 1.8V power
	input wire vssd1,	// User area 1 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // IRQ
    output [2:0] irq
);

    // all outputs must be tristated before being passed onto the project
    wire buf_wbs_ack_o;
    wire [31:0] buf_wbs_dat_o;
    wire [31:0] buf_la_data_out;
    wire [`MPRJ_IO_PADS-1:0] buf_io_out;
    wire [`MPRJ_IO_PADS-1:0] buf_io_oeb;
    wire [2:0] buf_irq;

    `ifdef FORMAL
    // formal can't deal with z, so set all outputs to 0 if not active
    `ifdef USE_WB
    assign wbs_ack_o    = active ? buf_wbs_ack_o    : 1'b0;
    assign wbs_dat_o    = active ? buf_wbs_dat_o    : 32'b0;
    `endif
    `ifdef USE_LA
    assign la_data_out = active ? buf_la_data_out  : 32'b0;
    `endif
    `ifdef USE_IO
    assign io_out       = active ? buf_io_out       : {`MPRJ_IO_PADS{1'b0}};
    assign io_oeb       = active ? buf_io_oeb       : {`MPRJ_IO_PADS{1'b0}};
    `endif
    `ifdef USE_IRQ
    assign irq          = active ? buf_irq          : 3'b0;
    `endif
    `include "properties.v"
    `else
    // tristate buffers
    
    `ifdef USE_WB
    assign wbs_ack_o    = active ? buf_wbs_ack_o    : 1'bz;
    assign wbs_dat_o    = active ? buf_wbs_dat_o    : 32'bz;
    `endif
    `ifdef USE_LA
    assign la_data_out  = active ? buf_la_data_out  : 32'bz;
    `endif
    `ifdef USE_IO
    assign io_out       = active ? buf_io_out       : {`MPRJ_IO_PADS{1'bz}};
    assign io_oeb       = active ? buf_io_oeb       : {`MPRJ_IO_PADS{1'bz}};
    `endif
    `ifdef USE_IRQ
    assign irq          = active ? buf_irq          : 3'bz;
    `endif
    `endif

    // permanently set oeb so that outputs are always enabled: 0 is output, 1 is high-impedance
    assign buf_io_oeb = {`MPRJ_IO_PADS{1'b0}};

    wire wb_valid = wbs_cyc_i & wbs_stb_i;
    wire watch_write = wb_valid;
    wire rst_watch =  wb_rst_i | la_data_in[0];

    // instantiate your module here, connecting what you need of the above signals
    asic_watch asic_watch_inst(
        .sysclk_i     ( wb_clk_i          ), // 32.768 KHz shared with SoC
        .smode_i      ( io_in[36]         ), // safe mode
        .sclk_i       ( io_in[37]         ), // safe clock GPIO 32.768 KHz
        .rst_i        ( rst_watch         ), // active high and syncronous to clock
        .dvalid_i     ( watch_write       ), // Data from wishbone is valid
        .cfg_i        ( wbs_dat_i[11:0]   ), // initial values for counters
        .segment_hxxx ( buf_io_out[14:8]  ),
        .segment_xhxx ( buf_io_out[21:15] ),
        .segment_xxmx ( buf_io_out[28:22] ),
        .segment_xxxm ( buf_io_out[35:29] )
    );

endmodule
