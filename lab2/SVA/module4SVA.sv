module module4SVA (
input ...
);

import FSMProperties::*;

// states recreated
localparam [3:0] WB_IDLE            = 3'd0,
                 WB_BURST1          = 3'd1,
                 WB_BURST2          = 3'd2,
                 WB_BURST3          = 3'd3,
                 WB_WAIT_ACK        = 3'd4;


/*place your properties here*/

endmodule

module Wrapper ;

bind a25_wishbone module4SVA wrp (
	...
);

endmodule
