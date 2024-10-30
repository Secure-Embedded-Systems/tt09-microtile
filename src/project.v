
`default_nettype none

module tt_um_microtile (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

   reg [7:0]	      counter;

   always @(posedge clk or negedge rst_n)
     if (rst_n == 1'b0)
       counter <= 8'b0;
     else
         counter <= ui_in[3:0] + ui_in[7:4];

   assign uo_out   = counter;
   
endmodule
