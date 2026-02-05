
module xpu_vpu_pc_tn_vlsu_ieee754_nan_type(
  float_data,
  is_nan
);
parameter EXPONENT_SIZE = 8;
parameter MANTISSA_SIZE = 23;

input   [EXPONENT_SIZE+MANTISSA_SIZE:0]  float_data;      
output                                   is_nan; 

wire    [EXPONENT_SIZE-1:0]              exponent;        
wire    [EXPONENT_SIZE+MANTISSA_SIZE:0]  float_data;      
wire    [EXPONENT_SIZE+MANTISSA_SIZE:0]  ieee754_raw_bits; 
wire                                     is_nan;          
wire    [MANTISSA_SIZE-1:0]              mantissa;  

//csky vperl_off
assign ieee754_raw_bits[EXPONENT_SIZE+MANTISSA_SIZE:0] = float_data[EXPONENT_SIZE+MANTISSA_SIZE:0];

// assign sign                        = ieee754_raw_bits[(EXPONENT_SIZE + MANTISSA_SIZE)];
assign exponent[EXPONENT_SIZE-1:0] = ieee754_raw_bits[EXPONENT_SIZE + MANTISSA_SIZE-1:MANTISSA_SIZE];
assign mantissa[MANTISSA_SIZE-1:0] = ieee754_raw_bits[MANTISSA_SIZE-1:0];

assign is_nan     = (&exponent[EXPONENT_SIZE-1:0])
                  & (|mantissa[MANTISSA_SIZE-1:0]);
//csky vperl_on
endmodule
