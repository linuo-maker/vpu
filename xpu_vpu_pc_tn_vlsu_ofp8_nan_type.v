module xpu_vpu_pc_tn_vlsu_ofp8_nan_type(
  float_data,
  is_nan
);

// &Ports; @17
input   [7:0]  float_data;   
output         is_nan;       

// &Regs; @18

// &Wires; @19
wire    [3:0]  e4m3_exponent; 
wire    [2:0]  e4m3_mantissa; 
wire    [4:0]  e5m2_exponent; 
wire    [1:0]  e5m2_mantissa; 
wire    [7:0]  float_data;   
wire           is_nan;       
wire    [7:0]  ofp8_raw_bits; 


assign ofp8_raw_bits[7:0] = float_data[7:0];

// assign sign               = ofp8_raw_bits[7];
assign e4m3_exponent[3:0] = ofp8_raw_bits[6:3];
assign e4m3_mantissa[2:0] = ofp8_raw_bits[2:0];

assign e5m2_exponent[4:0] = ofp8_raw_bits[6:2];
assign e5m2_mantissa[1:0] = ofp8_raw_bits[1:0];

assign is_nan     =((&e4m3_exponent[3:0])
                  & (&e4m3_mantissa[2:0]))
                  |((&e5m2_exponent[4:0])
                  & (|e5m2_mantissa[1:0]));

// &ModuleEnd; @35
endmodule
