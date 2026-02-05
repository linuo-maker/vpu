
module xpu_vpu_pc_com_root_gated_clk_cell(
  clk_in,
  module_en,
  local_en,
  external_en,
  pad_yy_icg_scan_en,
  clk_out
);
//RELEASE_INST_LIB

input  clk_in;
input  module_en;
input  local_en;
input  external_en;
input  pad_yy_icg_scan_en;
output clk_out;

wire   clk_en_bf_latch;
wire   SE;

assign clk_en_bf_latch = module_en | local_en | external_en ;

// SE driven from primary input, held constant
assign SE = pad_yy_icg_scan_en;
 
             CKLNQD8BWP6T16P96CPDLVT x_com_gated_clk_cell (
              .CP           (clk_in),
              .TE           (SE),
              .E            (clk_en_bf_latch),
              .Q            (clk_out)
            );

endmodule   