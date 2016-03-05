module module4SVA (
input i_wb_ack;
input extra_write_r;
);

import FSMProperties::*;

// states recreated
localparam [3:0] WB_IDLE            = 3'd0,
                 WB_BURST1          = 3'd1,
                 WB_BURST2          = 3'd2,
                 WB_BURST3          = 3'd3,
                 WB_WAIT_ACK        = 3'd4;


/*place your properties here*/

reg     [2:0]               wishbone_st;

assign wishbone_st == WB_IDLE;

ap1: assert property(@(posedge  i_clk) 
                          (wishbone_st==WB_IDLE) |=> (wishbone_st==WB_IDLE) || (wishbone_st==WB_BURST1) || (wishbone_st==WB_WAIT_ACK));
ap2: assert property(@(posedge  i_clk) 
             (wishbone_st==WB_BURST1) ##0 (i_wb_ack) |=> (wishbone_st==WB_BURST2));
ap3: assert property(@(posedge  i_clk) 
             (wishbone_st==WB_BURST2) ##0 (i_wb_ack) |=> (wishbone_st==WB_BURST3));
ap4: assert property(@(posedge  i_clk) 
             (wishbone_st==WB_BURST3) ##0 (extra_write_r || !i_wb_ack) |=> (wishbone_st==WB_WAIT_ACK));
ap5: assert property(@(posedge  i_clk) 
             (wishbone_st==WB_WAIT_ACK) ##0 (!extra_write_r && i_wb_ack) |=> (wishbone_st==WB_BURST2));

endmodule

module Wrapper ;

bind a25_wishbone module4SVA wrp (
	.i_wb_ack(i_wb_ack);
	.extra_write_r(extra_write_r);
);

endmodule
